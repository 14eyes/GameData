require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23025 = class("Quest23025", QuestActorProxy)
Quest23025.defaultAlias = "Quest23025"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23025:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2302501"] = self.OnSubStart2302501,
        ["2302502"] = self.OnSubStart2302502,
        ["2302503"] = self.OnSubStart2302503,
        ["2302504"] = self.OnSubStart2302504,
        ["2302505"] = self.OnSubStart2302505,
        ["2302506"] = self.OnSubStart2302506,
        ["2302507"] = self.OnSubStart2302507,
        ["2302508"] = self.OnSubStart2302508,
        ["2302511"] = self.OnSubStart2302511,
        ["2302509"] = self.OnSubStart2302509,
        ["2302510"] = self.OnSubStart2302510
    }
end

function Quest23025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2302501"] = self.OnSubFinish2302501,
        ["2302502"] = self.OnSubFinish2302502,
        ["2302503"] = self.OnSubFinish2302503,
        ["2302504"] = self.OnSubFinish2302504,
        ["2302505"] = self.OnSubFinish2302505,
        ["2302506"] = self.OnSubFinish2302506,
        ["2302507"] = self.OnSubFinish2302507,
        ["2302508"] = self.OnSubFinish2302508,
        ["2302511"] = self.OnSubFinish2302511,
        ["2302509"] = self.OnSubFinish2302509,
        ["2302510"] = self.OnSubFinish2302510
    }
end

function Quest23025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23025:Start()
    print("Start")
end

function Quest23025:OnDestroy()
    print("OnDestroy")
end

function Quest23025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23025:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4087Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4087Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q2302503Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2302506Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2302511Trigger", 3, false)
end

function Quest23025:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest23025:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23025:OnSubStart2302501(arg1)
    print("OnSubStart2302501")
end

function Quest23025:OnSubFinish2302501(arg1)
    print("OnSubFinish2302501")
end

function Quest23025:OnSubStart2302502(arg1)
    print("OnSubStart2302502")
    self:CreateQuestNpc(arg1, npcs.Npc4087Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4087Data.alias, 1, true)
end

function Quest23025:OnSubFinish2302502(arg1)
    print("OnSubFinish2302502")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4087Data.alias)
end

function Quest23025:OnSubStart2302503(arg1)
    print("OnSubStart2302503")
    self:DailyNpcSafeHideSelf(npcs.Npc4087Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2302503Trigger", "Actor/Gadget/Q2302503Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302503_N4087").pos, sceneData:GetDummyPoint(3, "Q2302503_N4087").rot, true, false, 3)
end

function Quest23025:OnSubFinish2302503(arg1)
    print("OnSubFinish2302503")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4087Data.id, 1)
    end, nil, nil, datas.BlackScreenWord, false, true)

    actorMgr:DestroyEntityActor("Q2302503Trigger", 3, false)
    self:ClearNarratorTask()
end

function Quest23025:OnSubStart2302504(arg1)
    print("OnSubStart2302504")
    self:DailyNpcSafeHideSelf(npcs.Npc4087Data.alias, 1, true)
end

function Quest23025:OnSubFinish2302504(arg1)
    print("OnSubFinish2302504")
    self:SafeDestroyQuestNpc(npcs.Npc4087Data.alias, 3)
end

function Quest23025:OnSubStart2302505(arg1)
    print("OnSubStart2302505")
    self:CreateQuestNpc(arg1, npcs.Npc4087Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4087Data.alias, 1, true)
end

function Quest23025:OnSubFinish2302505(arg1)
    print("OnSubFinish2302505")
end

function Quest23025:OnSubStart2302506(arg1)
    print("OnSubStart2302506")
    self:DailyNpcSafeHideSelf(npcs.Npc4087Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2302506Trigger", "Actor/Gadget/Q2302506Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302506_guide").pos, sceneData:GetDummyPoint(3, "Q2302506_guide").rot, true, false, 3)
end

function Quest23025:OnSubFinish2302506(arg1)
    print("OnSubFinish2302506")
    self:NarratorOnlyTask(datas.NarratorTable06finish, nil, "")
end

function Quest23025:OnSubStart2302507(arg1)
    print("OnSubStart2302507")
    self:DailyNpcSafeHideSelf(npcs.Npc4087Data.alias, 1, true)
end

function Quest23025:OnSubFinish2302507(arg1)
    print("OnSubFinish2302507")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4087Data.alias)
end

function Quest23025:OnSubStart2302508(arg1)
    print("OnSubStart2302508")
    self:CreateQuestNpc(arg1, npcs.Npc4087Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4087Data.alias, 1, true)
end

function Quest23025:OnSubFinish2302508(arg1)
    print("OnSubFinish2302508")
end

function Quest23025:OnSubStart2302511(arg1)
    print("OnSubStart2302511")
    self:DailyNpcSafeHideSelf(npcs.Npc4087Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2302511Trigger", "Actor/Gadget/Q2302511Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302506_guide").pos, sceneData:GetDummyPoint(3, "Q2302506_guide").rot, true, false, 3)
end

function Quest23025:OnSubFinish2302511(arg1)
    print("OnSubFinish2302511")
    self:NarratorOnlyTask(datas.NarratorTable11fnish, nil, "")
end

function Quest23025:OnSubStart2302509(arg1)
    print("OnSubStart2302509")
    self:DailyNpcSafeHideSelf(npcs.Npc4087Data.alias, 1, true)
end

function Quest23025:OnSubFinish2302509(arg1)
    print("OnSubFinish2302509")
end

function Quest23025:OnSubStart2302510(arg1)
    print("OnSubStart2302510")
    self:DailyNpcSafeHideSelf(npcs.Npc4087Data.alias, 1, true)
end

function Quest23025:OnSubFinish2302510(arg1)
    print("OnSubFinish2302510")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4087Data.alias)
end

return Quest23025
