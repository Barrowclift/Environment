<a id="top"></a> Worden<br>Preliminary Project Plan
===================================================

Index
-----

1. [Project Background](#project-background)
2. [Statement of Work](#statement-of-work)
3. [Resource List](#resource-list)
4. [Assumptions](#assumptions)
5. [Project Schedule](#project-schedule)
6. [Risks](#risks)

<a id="project-background"></a> 1. Project Background
-----------------------------------------------------

With current technology, it has now become possible that individuals can be identified based on [nothing more than their writing style](https://psal.cs.drexel.edu/index.php/Research). This is even more troubling with the exposure of NSA’s Prism – among other privacy invading initiatives – which make it entirely possible for them to easily attribute anonymous publications by feeding their databases into existing tools such as [JGAAP](evllabs.com/jgaap/w/index.php/Main_Page) and [JStylo](https://github.com/psal/jstylo). Among the many potential consequences of this ability means that whistle blowers revealing sensitive information about highly influential people or shady government operations such as the NSA are at risk of revealing themselves simply by the way they write.

### Test

This problem certainly isn’t exclusive to whistle blowers as it can also have consequences for recreational authors wishing to write under a pen name as well. For example, J.K. Rowling’s recent work [*The Cuckoo’s Calling*](http://en.wikipedia.org/wiki/The_Cuckoo's_Calling) was originally published under the alias Robert Galbraith. However, [Patrick Juola](http://www.duq.edu/academics/faculty/patrick-juola) leveraged the existing authorship detection tool he developed called [JGAAP](evllabs.com/jgaap/w/index.php/Main_Page) to make a strong case for Rowling being the true author. His calling out [ultimately led to her confession as the true author](chronicle.com/article/The-Professor-Who-Declared/140595/).

Currently, there’s not much the average person can do to protect themselves against such attacks. Even something as simple as just testing how anonymous their work is themselves proves to be difficult since the existing tools are incredibly difficult for the average person to use and understand.

Our team builds on the existing [JStylo](https://github.com/psal/jstylo) tool in order to make it a more robust program via backend changes and to give the power these tools possess to the people by creating a more intuitive frontend. Our Customer Requirements document has more information on the exact features our team has implemented.

[Back to top](#top)

<a id="statement-of-work"></a> 2. Statement of Work
---------------------------------------------------

The various work products outlined in the class syllabus follows:

__Quarter 1 - Fall Term__

* Preliminary Project Plan - *10/13 Deadline*
* Customer Requirements - *10/27 Deadline*
* Project Plan - *11/3 Deadline*
* Requirements Specification - *11/24 Deadline*
* Requirements Presentation - *Will present on 12/1*
* Requirements Specification (Complete) - *12/8 Deadline*

__Quarter 2 - Winter Term (Pending)__

__Quarter 3 - Spring Term (Pending)__

All members of the group will collaborate together on the completion and delivering of these products. These people are:

* [Marc Barrowclift](http://barrowclift.me)
* [Travis Dutko](mailto:tad82@drexel.edu)
* [Corey Everitt](mailto:cje42@drexel.edu)
* [Eric Nordstrom](mailto:ebn23@drexel.edu)
* [Ivan “Frankie” Orrego](mailto:ifo23@drexel.edu)
* [Jiakang Jin](mailto:jj534@drexel.edu)

[Back to top](#top)

<a id="resource-list"></a> 3. Resource List
-------------------------------------------

The resources listed below are required for the successfully completion of the final product and all work items outlined in the previous section:

* __AVAILABLE NOW__ - The [existing JStylo codebase](https://github.com/psal/jstylo) on Github
* __AVAILABLE NOW__ - Rachel Greenstadt’s second [JStylo](https://github.com/psal/jstylo) revision proposal documents.
* __AVAILABLE NOW__ - The Spark framework for giving Worden the potential to scale in the future with distributed computing.
* __NOT YET DECIDED__ - Replacement machine learning library for Java to further optimize document processing speed. Currently [WEKA](www.cs.waikato.ac.nz/~ml/weka/) is being used but is simply not suitable for distributed machine learning and is not as actively maintained as desired.

Included in this list is the implicit resources required such as computers, downloads of the Java Development Kit, and a proper IDE.

[Back to top](#top)

<a id="assumptions"></a> 4. Assumptions
---------------------------------------

Below are a list of assumptions that we as a group and our stockholder Rachel Greenstadt have made:

* The system takes information that [JStylo](https://github.com/psal/jstylo) currently presents and displays it all in a way that is not confusing and empowers the user to make intelligent changes to their writing in order to make their document more anonymous.
* The system is more intuitive and easy to pick up for a user outside of the field to utilize than its previous iteration.
* The system no longer utilizes java swing and instead has a web frontend.
* The system is no longer dependent on a specific machine learning library ([WEKA](www.cs.waikato.ac.nz/~ml/weka/))
* The system can run in parallel on a distributed system.
* We are building the system's components in parallel to one another so that all aspects of the project are completed in a timely manner and each team member's skills are fully utilized at all times.
* Rachel is being updated on an “as needed” basis either as milestones are reached or every three weeks, whichever is shorter.
* We are conductinga user study to test the new tool with the redesigned UI against the original [JStylo](https://github.com/psal/jstylo) to show that the new design is an improvement.

[Back to top](#top)

<a id="project-schedule"></a> 5. Project Schedule
-------------------------------------------------

Some aspects of this project, especially in the UI/design department, may take more or less time depending on how well we anticipate user needs. Better initial design means that less iterations will be needed to hammer out a final design. Our tentative project schedule is outlined below:

__Quarter 1 - Fall Term__

* ~~Week 4 - Confirm project scope~~
* Week 5 - Create initial UI redesigns / Determine Feasibility for webUI versus desktop application
* Week 6 - Design User Study / Agree on API for backend to frontend communication
* Week 8 - Compile results of user study / Finalize UI design (Or come up with new potential designs should all other designs be poorly received)
* Week 10 - Have Final UI implemented (Or, have completed a follow up study to come up with an improved UI should the previous designs all fall short)

__Quarter 2 - Winter Term__

* TBD
* Week 10 - Completed API backend and frontend connected

__Quarter 3 - Spring Term__

* TBD
* Week 1/2 - Determine which optimizations have the highest priority given the APIs/how the system works
* Week ? - Follow up user studies to determine system effectiveness
* Week 10 - Functioning final product / Completed highest priority optimizations

[Back to top](#top)

<a id="risks"></a> 6. Risks
---------------------------

The core risks the project faces are almost a direct mirror of the assumptions we have made:

* We stand the risk of being unable to display the detection information that [JStylo](https://github.com/psal/jstylo) spits out in a way a normal person could understand and act on.
* We stand the risk of failing to redesign the UI in such a way that a normal person can intuitively use the application without being confused or getting frustrated and giving up.
* We stand the risk of being unable to use the web for our frontend UI and have to fall back to Java Swing (Bad!)
* We stand the risk of failing to successfully rip out [WEKA](www.cs.waikato.ac.nz/~ml/weka/) and suffer the loss of performance we would have gotten from a better alternative.
* We stand the risk of being unable to actually run our authorship detection process in parallel on a distributed system, therefore restricting the application to the speed of any given local computer and killing future scalability.
* We stand the risk of failing to coordinate working on both the frontend and back end at the same time and being unable to fit the pieces together correctly at the end resulting in a complete project collapse.
* We stand the risk of failing to secure a good user study to prove that our redesigned frontend is indeed an improvement over the existing design.

[Back to top](#top)