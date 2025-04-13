import { Link } from "@inertiajs/react";
import HeadLine2 from "@/Components/MyComponents/HeadLine2";
import { useState } from "react";
import { motion } from "framer-motion"; // Import motion from framer-motion

const HomeProjects = ({ ourProject, bgTitle, isProjectPage }) => {
    const [visibleCount, setVisibleCount] = useState(8);
    const [isExpanded, setIsExpanded] = useState(false);

    // Extract unique project types for the navbar
    const projectTypes = [
        ...new Set(ourProject.map((project) => project.type)),
    ];

    // Set the initial selected type to the first project type
    const [selectedType, setSelectedType] = useState(projectTypes[0] || "");

    // Filter projects based on selected type
    const filteredProjects = ourProject.filter(
        (project) => project.type === selectedType
    );

    // Handle the button click to toggle expanded view
    const handleButtonClick = () => {
        if (isProjectPage) {
            setIsExpanded(!isExpanded);
            setVisibleCount(isExpanded ? 8 : filteredProjects.length);
        } else {
            window.location.href = "/projects"; // Navigate to Projects Page
        }
    };

    // Projects to display (use filtered or all projects based on bgTitle)
    const projectsToDisplay = bgTitle
        ? ourProject.slice(0, 8)
        : filteredProjects.slice(0, visibleCount);

    return (
        <div
            className={`w-full px-5 py-12 ${
                bgTitle ? "bg-[#8b0303]" : "bg-white"
            } md:py-10`}
        >
            <div className="container mx-auto flex flex-col items-center justify-center">
                {bgTitle && (
                    <HeadLine2 title="Our Projects" text="text-white" />
                )}

                {/* Navbar for Filtering (Visible only when bgTitle is false) */}
                {!bgTitle && (
                    <div className="mb-6 grid grid-cols-2 md:grid-cols-3 xl:grid-cols-4 gap-14 bg-white p-4 px-7 md:px-10 2xl:px-7">
                        {projectTypes.map((type) => (
                            <button
                                key={type}
                                onClick={() => setSelectedType(type)}
                                className={`md:px-10  2xl:px-24 py-3 font-semibold transition-all duration-300 text-center ${
                                    selectedType === type
                                        ? "bg-[#8B0304] text-white shadow-lg scale-105"
                                        : "bg-gray-200 text-gray-800 hover:bg-[#8B0304] hover:text-white"
                                }`}
                            >
                                {type}
                            </button>
                        ))}
                    </div>
                )}

                {/* Project Grid */}
                <div
                    className={`grid grid-cols-1 md:px-10 2xl:px-7 md:grid-cols-${
                        bgTitle ? "4" : "4"
                    } gap-8`}
                >
                    {projectsToDisplay.map((project, index) => (
                        <motion.div
                            key={project.id}
                            className="relative transition-all duration-300 group rounded-xl overflow-hidden"
                            initial={{ opacity: 0, y: 20 }}
                            whileInView={{
                                opacity: 1,
                                y: 0,
                                transition: {
                                    duration: 0.5,
                                    delay: index * 0.2, // Delay based on index
                                    ease: "easeInOut",
                                },
                            }}
                            viewport={{ once: true }} // Trigger animation once when in view
                        >
                            <Link
                                href={`/projects/${project.id}`}
                                className="relative"
                            >
                                <img
                                    src={project.image}
                                    alt={project.title}
                                    className="w-full h-[300px] object-fill group-hover:opacity-50 transition-opacity duration-300"
                                />
                                <div className="absolute inset-0 bg-black opacity-0 group-hover:opacity-30 transition-all duration-300"></div>
                                <div className="absolute inset-0 flex flex-col items-center justify-center opacity-0 group-hover:opacity-100 transition-all duration-300 px-5 uppercase">
                                    <h2 className="text-xl font-extrabold text-white text-center">
                                        {project.title}
                                    </h2>
                                    <p className="text-sm font-extrabold text-white text-center mt-1 line-clamp-3">
                                        {project.description}
                                    </p>
                                </div>
                            </Link>
                        </motion.div>
                    ))}
                </div>

                {/* Show More / Show Less Button */}
                <button onClick={handleButtonClick} className="nice-button-2">
                    {isProjectPage
                        ? isExpanded
                            ? "Show Less"
                            : "Show More"
                        : "-- More Projects --"}
                </button>
            </div>
        </div>
    );
};

export default HomeProjects;
