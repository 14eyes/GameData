require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71035 = class("Quest71035", QuestActorProxy)
Quest71035.defaultAlias = "Quest71035"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71035:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7103501"] = self.OnSubStart7103501,
        ["7103502"] = self.OnSubStart7103502,
        ["7103503"] = self.OnSubStart7103503,
        ["7103504"] = self.OnSubStart7103504,
        ["7103505"] = self.OnSubStart7103505,
        ["7103506"] = self.OnSubStart7103506,
        ["7103507"] = self.OnSubStart7103507,
        ["7103508"] = self.OnSubStart7103508
    }
end

function Quest71035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7103501"] = self.OnSubFinish7103501,
        ["7103502"] = self.OnSubFinish7103502,
        ["7103503"] = self.OnSubFinish7103503,
        ["7103504"] = self.OnSubFinish7103504,
        ["7103505"] = self.OnSubFinish7103505,
        ["7103506"] = self.OnSubFinish7103506,
        ["7103507"] = self.OnSubFinish7103507,
        ["7103508"] = self.OnSubFinish7103508
    }
end

function Quest71035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71035:Start()
    print("Start")
end

function Quest71035:OnDestroy()
    print("OnDestroy")
end

function Quest71035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71035:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71035:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest71035:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71035:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71035:OnSubStart7103501(arg1)
    print("OnSubStart7103501")
    actorMgr:CreateActorWithPos("Q7103501kaicheTrigger", "Actor/Gadget/Q7103501kaicheTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7103501_guide_310701426").pos, sceneData:GetDummyPoint(3, "Q7103501_guide_310701426").rot, true, false, 3)
end

function Quest71035:OnSubFinish7103501(arg1)
    print("OnSubFinish7103501")
end

function Quest71035:OnSubStart7103502(arg1)
    print("OnSubStart7103502")
    self:CreateQuestNpc(arg1, npcs.Npc2045Data.id, 2)
end

function Quest71035:OnSubFinish7103502(arg1)
    print("OnSubFinish7103502")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2045Data.alias)
end

function Quest71035:OnSubStart7103503(arg1)
    print("OnSubStart7103503")
    self:CreateQuestNpc(arg1, npcs.XiaoData.id, 1)
    actorMgr:CreateActorWithPos("Q7103503Trigger", "Actor/Gadget/Q7103503Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7103503target").pos, sceneData:GetDummyPoint(3, "Q7103503target").rot, true, false, 3)
end

function Quest71035:OnSubFinish7103503(arg1)
    print("OnSubFinish7103503")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "Tag")
end

function Quest71035:OnSubStart7103504(arg1)
    print("OnSubStart7103504")
end

function Quest71035:OnSubFinish7103504(arg1)
    print("OnSubFinish7103504")
    self:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
end

function Quest71035:OnSubStart7103505(arg1)
    print("OnSubStart7103505")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12326Data.id, 2)
        arg1_2:GetQuestNpcActor(npcs.Npc12326Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
    end)

    actorMgr:CreateActorWithPos("Q7103505Trigger", "Actor/Gadget/Q7103505Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q71035WPA_Attack").pos, sceneData:GetDummyPoint(3, "Q71035WPA_Attack").rot, true, false, 3)
end

function Quest71035:OnSubFinish7103505(arg1)
    print("OnSubFinish7103505")
    self:ActorDestroy("Q7103505Trigger")
end

function Quest71035:OnSubStart7103506(arg1)
    print("OnSubStart7103506")
    self:GetQuestNpcActor(npcs.Npc12326Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
end

function Quest71035:OnSubFinish7103506(arg1)
    print("OnSubFinish7103506")
    self:SafeDestroyQuestNpc(npcs.Npc12326Data.alias, 3)
end

function Quest71035:OnSubStart7103507(arg1)
    print("OnSubStart7103507")
    actorMgr:CreateActorWithPos("Q7103507Trigger", "Actor/Gadget/Q7103507Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7103503_N10204_310701425").pos, sceneData:GetDummyPoint(3, "Q7103503_N10204_310701425").rot, true, false, 3)
end

function Quest71035:OnSubFinish7103507(arg1)
    print("OnSubFinish7103507")
end

function Quest71035:OnSubStart7103508(arg1)
    print("OnSubStart7103508")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12326Data.id, 1, npcs.Npc12326Data.alias)
end

function Quest71035:OnSubFinish7103508(arg1)
    print("OnSubFinish7103508")
end

return Quest71035
