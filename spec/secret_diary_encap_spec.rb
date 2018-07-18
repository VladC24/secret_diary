require 'secret_diary_encap'

describe SecretDiary do

    subject(:diary) {described_class.new()}

    context 'when new' do
        it 'raises error when user attempts to add entry to new SecretDiary' do
            expect { diary.add_entry }.to raise_error 'Cannot add entry: Diary locked'
        end
        it 'raises error when user attempts to get entries from new SecretDiary' do
            expect { diary.get_entries }.to raise_error 'Cannot get entries: Diary locked'
        end
        it 'responds to unlock' do
            expect(SecretDiary.new).to respond_to(:unlock)
        end
    end
    context 'when locked' do
        it 'raises error when user attempts to add entry to locked diary' do
            diary.unlock
            diary.lock
            expect { diary.add_entry }.to raise_error 'Cannot add entry: Diary locked'
            puts "*********"
            puts "confirmed"
            puts "*********"
        end
        it 'raises error when user attempts to get entries from locked diary' do
            diary.unlock
            diary.lock
            expect { diary.get_entries }.to raise_error 'Cannot get entries: Diary locked'
        end
    end
    context 'when unlocked' do
        
        it 'does not raise error when user attempts to add entry' do
            diary.unlock
            expect { diary.add_entry }.not_to raise_error
        end
        it 'does not raise error when user attempts to get entries' do
            diary.unlock
            expect { diary.get_entries }.not_to raise_error
        end
        it 'responds to lock' do
            expect(diary).to respond_to(:lock)
        end
    end
end