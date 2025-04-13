import { motion } from "framer-motion";
import { Link } from "@inertiajs/react";
import HeadLine2 from "@/Components/MyComponents/HeadLine2";

const ProjectDetails = ({ project }) => {
    if (!project) {
        return (
            <motion.div
                className="text-center text-xl font-bold p-10 bg-white shadow-md rounded-lg"
                initial={{ opacity: 0, scale: 0.9 }}
                animate={{ opacity: 1, scale: 1 }}
                transition={{ duration: 0.5 }}
            >
                <div className="text-3xl font-bold text-red-600">
                    Project Not Found 😢
                </div>
            </motion.div>
        );
    }

    const imageUrl = project.image.startsWith("http")
        ? project.image
        : `${window.location.origin}/${project.image}`;

    return (
        <motion.div
            className="md:max-w-screen-xl 2xl:max-w-screen-2xl mx-auto px-5 md:px-14 2xl:px-10 pb-10 bg-white"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ duration: 0.6 }}
        >
            {/* Back Button - Centered */}
            <div className="w-full flex justify-center mt-10">
                <motion.div
                    whileHover={{ scale: 1.05 }}
                    transition={{ duration: 0.2 }}
                >
                    <Link
                        href="/projects"
                        className="inline-block text-lg font-semibold px-6 py-3 rounded-lg bg-red-600 text-white hover:bg-red-700 transition-all duration-300 shadow-md"
                    >
                        ← Back to Projects
                    </Link>
                </motion.div>
            </div>

            {/* Flexbox Layout for Image and Info */}
            <div className="flex flex-col md:flex-row items-center gap-12">
                {/* Project Details (Info Section) */}
                <motion.div
                    className="w-full md:w-1/2 space-y-6"
                    initial={{ x: -50, opacity: 0 }}
                    animate={{ x: 0, opacity: 1 }}
                    transition={{ duration: 0.6 }}
                >
                    <h1 className="text-gray-900 text-4xl 2xl:text-5xl font-bold text-start ">
                        {project.title}
                    </h1>
                    <p className="text-sm 2xl:text-lg text-gray-700 leading-relaxed">
                        {project.description}
                    </p>

                    {/* Animated Info Grid */}
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6 ">
                        {[
                            { label: "📌 Status", value: project.status },
                            { label: "👤 Owner", value: project.owner },
                            { label: "📍 Area", value: project.area },
                            {
                                label: "📅 Commercial Operation Date",
                                value: project.commercial_operation_date,
                            },
                        ].map((item, index) => (
                            <motion.div
                                key={index}
                                className="bg-gray-100 p-5 rounded-lg text-gray-800 shadow-md transition-transform duration-300 hover:bg-gray-900 hover:text-white"
                                whileHover={{ scale: 1.05 }}
                                transition={{ duration: 0.2 }}
                            >
                                <p className="font-semibold  md:text-base 2xl:text-lg">
                                    {item.label}:
                                </p>
                                <span className="block md:text-sm 2xl:text-xl font-bold">
                                    {item.value}
                                </span>
                            </motion.div>
                        ))}
                    </div>
                </motion.div>

                {/* Image Section */}
                <motion.div
                    className="w-full  md:w-1/2 flex justify-center"
                    initial={{ x: 50, opacity: 0 }}
                    animate={{ x: 0, opacity: 1 }}
                    transition={{ duration: 0.6 }}
                >
                    <div className="w-full md:mt-10 2xl:mt-20 md:h-[400px] 2xl:h-[500px] overflow-hidden rounded-lg shadow-md">
                        <motion.img
                            src={imageUrl}
                            alt={project.title}
                            className="w-full h-full object-fill transition duration-500 hover:scale-110"
                            whileHover={{ scale: 1.05 }}
                        />
                    </div>
                </motion.div>
            </div>
        </motion.div>
    );
};

export default ProjectDetails;
