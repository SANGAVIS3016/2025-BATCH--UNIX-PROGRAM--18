Linux File Permissions – Numeric and Symbolic Methods
Aim

To change file permissions using numeric and symbolic methods with the Linux chmod command.

Learning Objectives

After completing this assignment, you should be able to:

Understand Linux file permissions.

Identify read (r), write (w), and execute (x) permissions.

Use numeric values with chmod.

Use symbolic values with chmod.

Apply different permissions to user, group, and others.

Verify file permissions using ls -l.

Background

Linux permissions are represented using:

r = read    = 4
w = write   = 2
x = execute = 1


For example:

chmod 755 file.sh


means:

Owner  = 7 = rwx
Group  = 5 = r-x
Others = 5 = r-x


Symbolic notation can also be used:

chmod u+x file.sh
chmod g-w file.sh
chmod o-r file.sh


where:

u = user/owner

g = group

o = others

a = all

Task

Complete the script:

starter/permission_task.sh


Your script must modify the permissions of the files provided in:

starter/test_files/


Do not rename the files.

Requirements
Part 1 – Numeric Method

Using numeric chmod notation:

Set numeric.txt to:

rw-r-----


The corresponding numeric permission is:

640


Set conditions.txt to:

rwxr-x---


The corresponding numeric permission is:

750

Part 2 – Symbolic Method

Using symbolic chmod notation:

Set symbolic.txt initially so that the owner can read and write, while group and others have no permissions.

Expected permission:

rw-------


Using symbolic chmod, add execute permission for the owner.

Expected permission:

rwx------


Using symbolic chmod, add read permission for the group.

Expected permission:

rwxr-----


Using symbolic chmod, add read permission for others.

Expected permission:

rwxr--r--

Part 3 – Conditions

Set the permissions of conditions.txt according to these conditions:

Owner: read, write, and execute

Group: read and execute

Others: no permissions

Expected result:

rwxr-x---


Numeric equivalent:

750

Implementation Instructions

Edit only:

starter/permission_task.sh


Your script should contain appropriate chmod commands.

Example:

chmod 640 some_file


or:

chmod u+x some_file


Do not hard-code an absolute path such as:

chmod 640 /home/student/...


Use paths relative to the repository.

For example:

chmod 640 starter/test_files/numeric.txt

Running Your Program

Make the script executable:

chmod +x starter/permission_task.sh


Run it:

./starter/permission_task.sh


Check permissions:

ls -l starter/test_files/

Testing

You can run the provided tests locally:

bash tests/test_permissions.sh


The same tests will automatically run through GitHub Actions after you push your changes.

Submission

Commit and push your solution:

git add .
git commit -m "Complete Linux file permissions assignment"
git push


GitHub Actions will automatically evaluate your submission.

Important

Do not modify:

tests/test_permissions.sh
.github/workflows/autograding.yml


Modifying the tests or workflow to bypass the assessment is not considered a valid solution.

Expected Result

After successful execution, the permissions should be:

numeric.txt     rw-r-----
symbolic.txt   rwxr--r--
conditions.txt  rwxr-x---


The autograder will verify the actual filesystem permissions rather than checking only the text of your script.
