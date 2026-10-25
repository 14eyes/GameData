require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23031 = class("Quest23031", QuestActorProxy)
Quest23031.defaultAlias = "Quest23031"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2303101"] = self.OnSubStart2303101,
        ["2303102"] = self.OnSubStart2303102,
        ["2303103"] = self.OnSubStart2303103,
        ["2303104"] = self.OnSubStart2303104,
        ["2303105"] = self.OnSubStart2303105,
        ["2303106"] = self.OnSubStart2303106,
        ["2303107"] = self.OnSubStart2303107,
        ["2303108"] = self.OnSubStart2303108,
        ["2303109"] = self.OnSubStart2303109
    }
end

function Quest23031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2303101"] = self.OnSubFinish2303101,
        ["2303102"] = self.OnSubFinish2303102,
        ["2303103"] = self.OnSubFinish2303103,
        ["2303104"] = self.OnSubFinish2303104,
        ["2303105"] = self.OnSubFinish2303105,
        ["2303106"] = self.OnSubFinish2303106,
        ["2303107"] = self.OnSubFinish2303107,
        ["2303108"] = self.OnSubFinish2303108,
        ["2303109"] = self.OnSubFinish2303109
    }
end

function Quest23031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23031:Start()
    print("Start")
end

function Quest23031:OnDestroy()
    print("OnDestroy")
end

function Quest23031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23031:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4163Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    actorMgr:DestroyEntityActor("Q23031Trigger2303104", 3, false)
    actorMgr:DestroyEntityActor("Q23031Trigger2303107", 3, false)
end

function Quest23031:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23031:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest23031:OnSubStart2303101(arg1)
    print("OnSubStart2303101")
    self:CreateQuestNpc(arg1, npcs.Npc4163Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4163Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest23031:OnSubFinish2303101(arg1)
    print("OnSubFinish2303101")
end

function Quest23031:OnSubStart2303102(arg1)
    print("OnSubStart2303102")
end

function Quest23031:OnSubFinish2303102(arg1)
    print("OnSubFinish2303102")
end

function Quest23031:OnSubStart2303103(arg1)
    print("OnSubStart2303103")
end

function Quest23031:OnSubFinish2303103(arg1)
    print("OnSubFinish2303103")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4163Data.alias)
end

function Quest23031:OnSubStart2303104(arg1)
    print("OnSubStart2303104")
    actorMgr:CreateActorWithPos("Q23031Trigger2303104", "Actor/Gadget/Q23031Trigger2303104", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303104_kaiche").pos, sceneData:GetDummyPoint(3, "Q2303104_kaiche").rot, true, false, 3)
end

function Quest23031:OnSubFinish2303104(arg1)
    print("OnSubFinish2303104")
    self:NarratorOnlyTask(datas.NarratorTable230319903, nil, "")
    if actorMgr:GetActor("Q23031Trigger2303104") ~= nil then
        self:ActorDestroy("Q23031Trigger2303104")
    end
end

function Quest23031:OnSubStart2303105(arg1)
    print("OnSubStart2303105")
end

function Quest23031:OnSubFinish2303105(arg1)
    print("OnSubFinish2303105")
end

function Quest23031:OnSubStart2303106(arg1)
    print("OnSubStart2303106")
end

function Quest23031:OnSubFinish2303106(arg1)
    print("OnSubFinish2303106")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4163Data.alias)
end

function Quest23031:OnSubStart2303107(arg1)
    print("OnSubStart2303107")
    actorMgr:CreateActorWithPos("Q23031Trigger2303107", "Actor/Gadget/Q23031Trigger2303107", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303107_guide").pos, sceneData:GetDummyPoint(3, "Q2303107_guide").rot, true, false, 3)
end

function Quest23031:OnSubFinish2303107(arg1)
    print("OnSubFinish2303107")
    self:NarratorOnlyTask(datas.NarratorTable230319907, nil, "")
    if actorMgr:GetActor("Q23031Trigger2303107") ~= nil then
        self:ActorDestroy("Q23031Trigger2303107")
    end
end

function Quest23031:OnSubStart2303108(arg1)
    print("OnSubStart2303108")
end

function Quest23031:OnSubFinish2303108(arg1)
    print("OnSubFinish2303108")
end

function Quest23031:OnSubStart2303109(arg1)
    print("OnSubStart2303109")
end

function Quest23031:OnSubFinish2303109(arg1)
    print("OnSubFinish2303109")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4163Data.alias)
end

return Quest23031
