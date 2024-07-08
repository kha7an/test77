Foo.destroy_all
Bar.destroy_all

foo1 = Foo.create!(name: 'Foo 1', description: 'описание Foo 1')
foo2 = Foo.create!(name: 'Foo 2', description: 'описание Foo 2')
foo3 = Foo.create!(name: 'Foo 3', description: 'описание Foo 3')

foo1.bars.create!(name: 'Bar 1 для Foo 1', description: 'Описание Bar 1 для Foo 1')
foo1.bars.create!(name: 'Bar 2 для Foo 1', description: 'Описание Bar 2 для Foo 1')

foo2.bars.create!(name: 'Bar 1 для Foo 2', description: 'Описание Bar 1 для Foo 2')
foo2.bars.create!(name: 'Bar 2 для Foo 2', description: 'Описание Bar 2 для Foo 2')
foo2.bars.create!(name: 'Bar 3 для Foo 2', description: 'Описание Bar 3 для Foo 2')

foo3.bars.create!(name: 'Bar 1 для Foo 3', description: 'Описание Bar 1 для Foo 3')
