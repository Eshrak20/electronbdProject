import { motion } from "framer-motion";
import { Link } from "@inertiajs/react";

const ProductDetails = ({ product }) => {
    console.log(product);
    const featuresArray = product.features ? JSON.parse(product.features) : [];
    const imageUrl = product.icon.startsWith("http")
        ? product.icon
        : `${window.location.origin}/${product.icon}`;

    return (
        <div className="min-h-screen flex flex-col justify-center items-center bg-white p-5 md:p-10">
            {/* Back Button - Centered */}
            <div className="w-full flex justify-center mb-10">
                <Link
                    href="/product"
                    className="text-xl font-semibold px-6 py-3 rounded-lg bg-red-600 text-white hover:bg-red-700 transition-all duration-300 shadow-md"
                >
                    ← Back to Products
                </Link>
            </div>

            {/* Main Content Section */}
            <div className="flex flex-col items-center gap-7 md:px-12 bg-white">
                <div className="flex flex-col md:flex-row items-center gap-8">
                    {/* Image Section */}
                    <motion.div
                        className="w-full md:w-1/2 max-w-3xl flex justify-center overflow-hidden mb-6 md:mb-0"
                        initial={{ opacity: 0, x: -50 }}
                        animate={{ opacity: 1, x: 0 }}
                        transition={{ duration: 0.6 }}
                    >
                        <img
                            src={imageUrl}
                            alt={product.title}
                            className="w-full md:h-[400px] 2xl:h-[500px] rounded-2xl shadow-lg transition duration-500 hover:scale-105 object-fill"
                        />
                    </motion.div>

                    {/* Text Content */}
                    <motion.div
                        className="w-full md:w-1/2 space-y-4 md:space-y-6 text-center md:text-left"
                        initial={{ opacity: 0, x: 50 }}
                        animate={{ opacity: 1, x: 0 }}
                        transition={{ duration: 0.6 }}
                    >
                        <h2 className="text-2xl md:text-3xl 2xl:text-4xl font-bold text-gray-900">
                            {product.title}
                        </h2>
                        <p className="text-sm md:text-base 2xl:text-2xl text-gray-700">
                            {product.description}
                        </p>
                    </motion.div>
                </div>

                {/* Text Content Section */}
                <motion.div
                    className="w-full  space-y-8 text-center"
                    initial={{ opacity: 0, x: 50 }}
                    animate={{ opacity: 1, x: 0 }}
                    transition={{ duration: 0.6 }}
                >
                    {/* Key Features Section */}
                    {featuresArray.length > 0 && (
                        <div className="mt-6">
                            {/* <h3 className="md:text-xl 2xl:text-3xl font-semibold text-gray-800 mb-4">
                                Key Features:
                            </h3> */}
                            <div className="overflow-x-auto shadow-lg border border-gray-200 rounded-lg">
                                <table className="min-w-full table-auto text-left">
                                    <thead className="bg-red-600 text-white">
                                        <tr>
                                            <th className="px-4 py-2 text-lg font-semibold">
                                                #
                                            </th>
                                            <th className="px-4 py-2 text-lg font-semibold">
                                                Feature
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white">
                                        {featuresArray.map((feature, index) => (
                                            <motion.tr
                                                key={index}
                                                initial={{ opacity: 0, y: 10 }}
                                                animate={{ opacity: 1, y: 0 }}
                                                transition={{
                                                    delay: index * 0.1,
                                                }}
                                                className="border-t border-gray-300 hover:bg-red-50 transition-all duration-300"
                                            >
                                                <td className="px-4 py-2 text-lg font-medium text-gray-800">
                                                    {index + 1}
                                                </td>
                                                <td className="px-4 py-2 text-lg font-medium text-gray-700">
                                                    {feature}
                                                </td>
                                            </motion.tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </motion.div>
            </div>
        </div>
    );
};

export default ProductDetails;
