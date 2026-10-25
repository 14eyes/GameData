require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74165 = class("Quest74165", QuestActorProxy)
Quest74165.defaultAlias = "Quest74165"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74165:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74165:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7416507"] = self.OnSubStart7416507,
        ["7416501"] = self.OnSubStart7416501,
        ["7416508"] = self.OnSubStart7416508,
        ["7416502"] = self.OnSubStart7416502,
        ["7416503"] = self.OnSubStart7416503,
        ["7416504"] = self.OnSubStart7416504,
        ["7416506"] = self.OnSubStart7416506,
        ["7416505"] = self.OnSubStart7416505
    }
end

function Quest74165:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7416507"] = self.OnSubFinish7416507,
        ["7416501"] = self.OnSubFinish7416501,
        ["7416508"] = self.OnSubFinish7416508,
        ["7416502"] = self.OnSubFinish7416502,
        ["7416503"] = self.OnSubFinish7416503,
        ["7416504"] = self.OnSubFinish7416504,
        ["7416506"] = self.OnSubFinish7416506,
        ["7416505"] = self.OnSubFinish7416505
    }
end

function Quest74165:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74165:Start()
    print("Start")
end

function Quest74165:OnDestroy()
    print("OnDestroy")
end

function Quest74165:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74165:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74165:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74165:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74165:OnSubStart7416507(arg1)
    print("OnSubStart7416507")
    actorMgr:CreateActorWithPos("Q74165Trigger_7416507", "Actor/Gadget/Q74165Trigger_7416507", 70900002, 0, {x = 2625.934, y = 128.773, z = 3654.509}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74165:OnSubFinish7416507(arg1)
    print("OnSubFinish7416507")
end

function Quest74165:OnSubStart7416501(arg1)
    print("OnSubStart7416501")
end

function Quest74165:OnSubFinish7416501(arg1)
    print("OnSubFinish7416501")
end

function Quest74165:OnSubStart7416508(arg1)
    print("OnSubStart7416508")
end

function Quest74165:OnSubFinish7416508(arg1)
    print("OnSubFinish7416508")
end

function Quest74165:OnSubStart7416502(arg1)
    print("OnSubStart7416502")
    actorMgr:CreateActorWithPos("Q74165Trigger_RMD1", "Actor/Gadget/Q74165Trigger_RMD1", 70900002, 0, {x = 2624.947, y = 49.206, z = 3597.909}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q74165Trigger_RMD2", "Actor/Gadget/Q74165Trigger_RMD2", 70900002, 0, {x = 2638.25, y = -76.0, z = 3498.426}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74165:OnSubFinish7416502(arg1)
    print("OnSubFinish7416502")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TextmapId, 1, nil, nil)
end

function Quest74165:OnSubStart7416503(arg1)
    print("OnSubStart7416503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7416503, 0, 20, 1)
end

function Quest74165:OnSubFinish7416503(arg1)
    print("OnSubFinish7416503")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74165:OnSubStart7416504(arg1)
    print("OnSubStart7416504")
end

function Quest74165:OnSubFinish7416504(arg1)
    print("OnSubFinish7416504")
end

function Quest74165:OnSubStart7416506(arg1)
    print("OnSubStart7416506")
end

function Quest74165:OnSubFinish7416506(arg1)
    print("OnSubFinish7416506")
end

function Quest74165:OnSubStart7416505(arg1)
    print("OnSubStart7416505")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7416505, 0, 50, 1)
end

function Quest74165:OnSubFinish7416505(arg1)
    print("OnSubFinish7416505")
end

return Quest74165
