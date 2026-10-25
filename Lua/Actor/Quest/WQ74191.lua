require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74191 = class("Quest74191", QuestActorProxy)
Quest74191.defaultAlias = "Quest74191"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74191:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74191:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7419104"] = self.OnSubStart7419104,
        ["7419101"] = self.OnSubStart7419101,
        ["7419102"] = self.OnSubStart7419102,
        ["7419103"] = self.OnSubStart7419103
    }
end

function Quest74191:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7419104"] = self.OnSubFinish7419104,
        ["7419101"] = self.OnSubFinish7419101,
        ["7419102"] = self.OnSubFinish7419102,
        ["7419103"] = self.OnSubFinish7419103
    }
end

function Quest74191:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74191:Start()
    print("Start")
end

function Quest74191:OnDestroy()
    print("OnDestroy")
end

function Quest74191:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74191:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74191:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74191:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 2 then
        actorUtils.FinishQuestID(false, 7419102)
    end
end

function Quest74191:OnSubStart7419104(arg1)
    print("OnSubStart7419104")
end

function Quest74191:OnSubFinish7419104(arg1)
    print("OnSubFinish7419104")
end

function Quest74191:OnSubStart7419101(arg1)
    print("OnSubStart7419101")
    this:PlayerEnterDungeonWithData(18, 1197, 7419101, 1, datas.PlayerEnterDungeonData, nil, nil)
end

function Quest74191:OnSubFinish7419101(arg1)
    print("OnSubFinish7419101")
end

function Quest74191:OnSubStart7419102(arg1)
    print("OnSubStart7419102")
    actorMgr:CreateActorWithPos("Q74191Trigger3", "Actor/Gadget/Q74191Trigger3", 70900002, 0, {x = 1521.763, y = -500.248, z = 3557.243}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20211)
end

function Quest74191:OnSubFinish7419102(arg1)
    print("OnSubFinish7419102")
end

function Quest74191:OnSubStart7419103(arg1)
    print("OnSubStart7419103")
    this:TransmitPlayerByData(arg1, 2, datas.TransmitWithUIAndTextMapData_01)
    actorMgr:CreateActorWithPos("Q74191Trigger1", "Actor/Gadget/Q74191Trigger1", 70900002, 0, {x = 1560.287, y = 563.178, z = 4338.488}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74191:OnSubFinish7419103(arg1)
    print("OnSubFinish7419103")
    this:SafeDestroyQuestNpc(npcs.Npc21355Data.alias, 20211)
    this:SafeDestroyQuestNpc(npcs.Npc21462Data.alias, 20211)
end

return Quest74191
