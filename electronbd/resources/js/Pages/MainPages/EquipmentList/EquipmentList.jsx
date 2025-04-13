import MainLayout from "@/Layouts/MainLayout";

const EquipmentList = ({ equipmentList }) => {
    return (
        <>
            <MainLayout>
                <div className="p-4 mt-16">
                    <h2 className="text-2xl font-bold text-gray-800 mb-4 mt-24">
                        Equipment List
                    </h2>
                    <div className="overflow-x-auto rounded-lg shadow-md">
                        <table className="min-w-full bg-white text-gray-800 border border-gray-300">
                            <thead className="bg-gray-200 text-gray-800">
                                <tr>
                                    <th className="px-4 py-2 border border-gray-300 text-sm sm:text-base">
                                        #
                                    </th>
                                    <th className="px-4 py-2 border border-gray-300 text-left text-sm sm:text-base">
                                        Name
                                    </th>
                                    <th className="px-4 py-2 border border-gray-300 text-sm sm:text-base">
                                        Category
                                    </th>
                                    <th className="px-4 py-2 border border-gray-300 text-sm sm:text-base">
                                        Quantity
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                {equipmentList.map((item, index) => (
                                    <tr
                                        key={item.id}
                                        className="hover:bg-gray-100 transition-all duration-200"
                                    >
                                        <td className="px-4 py-2 border border-gray-300 text-center text-sm sm:text-base">
                                            {index + 1}
                                        </td>
                                        <td className="px-4 py-2 border border-gray-300 text-sm sm:text-base">
                                            {item.name}
                                        </td>
                                        <td className="px-4 py-2 border border-gray-300 text-center text-sm sm:text-base">
                                            {item.category}
                                        </td>
                                        <td className="px-4 py-2 border border-gray-300 text-center text-sm sm:text-base">
                                            {item.quantity}
                                        </td>
                                    </tr>
                                ))}
                            </tbody>
                        </table>
                    </div>
                </div>
            </MainLayout>
        </>
    );
};

export default EquipmentList;
