# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ 'Chicago' }, { 'Copenhagen' }])
#   Mayor.create('Emanuel', city: cities.first)
employee_list = [["Srinivas",25,100000,"srinivas@gmail.com"], ["Hasita",24,90000,"hasi@gmail.com"],["Siri",43,140000,"siri@hotmail.com"],
	["Isacc",63,160000,"isacc@gmail.com"],["Mayanka",32,130000,"maya@gmail.com"], 
	["Naga",29,100000,"naga@gmail.com"], ["John",46,120000,"john132@gmail.com"],["Newton",67,85000,"newton12@hotmail.com"], 
	["Ojha",34,120000,"ojha@gmail.com"],["Zetta",39,130000,"zta@gmail.com"],
	["Elpher",76,180000,"elpher@gmail.com"], ["Poole",30,90000,"poole@gmail.com"],["Sholay",43,140000,"sholay@hotmail.com"],
	["Kelly",60,165000,"kelly@gmail.com"],["Dolly",26,110000,"dolly@gmail.com"], 
	["Mitchel",56,145000,"mitchel@gmail.com"], ["John",80,180000,"john.john@gmail.com"],["Nelson",65,156000,"nelson@hotmail.com"], 
	["Mandela",31,100000,"mandela@gmail.com"],["Zera",52,130000,"zera@gmail.com"],
	["Amrish",34,110000,"amrish@gmail.com"], ["Rita",24,95000,"rita@hot.com"],["Greg",49,125000,"greg@gmail.com"],
	["Einec",66,175000,"einec@gmail.com"],["Json",90,195000,"json@gmail.com"],
	['reshma', 30, 78000, 'ifh@gmail.com'],['aasha', 56, 156000, 'asha@gmail.com'], ['bale', 63, 160000, 'bale@gmail.com',], 
	['dash',26, 67000,'dash@gmail.com' ], ['zach', 45, 90660, 'azac@gmail.com'], ['bob', 67, 167000,'bob@gmail.com'],
    ['chimp',77, 157800, 'zxc@gmail.com'], ['behra',56, 150890, 'beh@gmail.com'],['geeta',23, 78000,'abn@gmail.com'], ['aadi',24, 68900, 'nmb@gmail.com'],
    ['tayab', 43, 109900,  'tyu@gmail.com'], ['rao',47, 154400, 'hgj@gmail.com'],['srinu', 20, 70000, 'gh@gmail.com'],['sunitha',22, 65700, 'hkjl@gmail.com'],
	['manikanta', 33, 90600, '444@gmail.com'],['chandra',81, 156000, 'gyu@gmail.com'], ['kishan',77, 150070, 'hjgsa@gmail.com'],['santhi',66, 150500, 'hwxsq@gmail.com'],
	['pritham', 55, 167000, 'jksx7@gmail.com'], ['priyanka', 33, 90800, 'aiwsx@gmail.com']
]

department_list = ["EE","CS","ME","CE","MBA"]
k=1;

employee_list.each do|val1,val2,val3,val4,val5|
	Employee.create(name: val1, age: val2, salary: val3, email: val4, department_id:k)
	if(k==5)
		k = 1
	end
	if(k!=5)
		k=k+1
	end
end
department_list.each do|dept|
	Department.create(dept_name: dept)
end