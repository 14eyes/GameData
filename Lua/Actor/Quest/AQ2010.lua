require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2010 = class("Quest2010", QuestActorProxy)
Quest2010.defaultAlias = "Quest2010"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest2010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest2010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["201001"] = self.OnSubStart201001,
        ["201002"] = self.OnSubStart201002,
        ["201003"] = self.OnSubStart201003,
        ["201004"] = self.OnSubStart201004,
        ["201005"] = self.OnSubStart201005,
        ["201006"] = self.OnSubStart201006,
        ["201012"] = self.OnSubStart201012,
        ["201013"] = self.OnSubStart201013,
        ["201017"] = self.OnSubStart201017,
        ["201007"] = self.OnSubStart201007,
        ["201014"] = self.OnSubStart201014,
        ["201010"] = self.OnSubStart201010,
        ["201016"] = self.OnSubStart201016,
        ["201018"] = self.OnSubStart201018,
        ["201008"] = self.OnSubStart201008,
        ["201015"] = self.OnSubStart201015,
        ["201011"] = self.OnSubStart201011,
        ["201009"] = self.OnSubStart201009
    }
end

function Quest2010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["201001"] = self.OnSubFinish201001,
        ["201002"] = self.OnSubFinish201002,
        ["201003"] = self.OnSubFinish201003,
        ["201004"] = self.OnSubFinish201004,
        ["201005"] = self.OnSubFinish201005,
        ["201006"] = self.OnSubFinish201006,
        ["201012"] = self.OnSubFinish201012,
        ["201013"] = self.OnSubFinish201013,
        ["201017"] = self.OnSubFinish201017,
        ["201007"] = self.OnSubFinish201007,
        ["201014"] = self.OnSubFinish201014,
        ["201010"] = self.OnSubFinish201010,
        ["201016"] = self.OnSubFinish201016,
        ["201018"] = self.OnSubFinish201018,
        ["201008"] = self.OnSubFinish201008,
        ["201015"] = self.OnSubFinish201015,
        ["201011"] = self.OnSubFinish201011,
        ["201009"] = self.OnSubFinish201009
    }
end

function Quest2010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["201001"] = self.OnSubFailed201001,
        ["201002"] = self.OnSubFailed201002,
        ["201003"] = self.OnSubFailed201003,
        ["201004"] = self.OnSubFailed201004,
        ["201005"] = self.OnSubFailed201005,
        ["201006"] = self.OnSubFailed201006,
        ["201012"] = self.OnSubFailed201012,
        ["201013"] = self.OnSubFailed201013,
        ["201017"] = self.OnSubFailed201017,
        ["201007"] = self.OnSubFailed201007,
        ["201014"] = self.OnSubFailed201014,
        ["201010"] = self.OnSubFailed201010,
        ["201016"] = self.OnSubFailed201016,
        ["201018"] = self.OnSubFailed201018,
        ["201008"] = self.OnSubFailed201008,
        ["201015"] = self.OnSubFailed201015,
        ["201011"] = self.OnSubFailed201011,
        ["201009"] = self.OnSubFailed201009
    }
end

function Quest2010:Start()
    print("Start")
end

function Quest2010:OnDestroy()
    print("OnDestroy")
end

function Quest2010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2010:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest2010:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest2010:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest2010:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest2010:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:FinishQuestID(false, 201017)
    elseif arg1 == 2 then
        self:FinishQuestID(false, 201018)
    end
end

function Quest2010:OnSubStart201001(arg1)
    print("OnSubStart201001")
    self:CreateQuestNpc(arg1, npcs.Npc12013Data.id, 1)
    actorMgr:CreateActorWithPos("Q2010Trigger", "Actor/Gadget/Q2010Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q201001Zheping").pos, sceneData:GetDummyPoint(3, "Q201001Zheping").rot, true, false, 3)
end

function Quest2010:OnSubFinish201001(arg1)
    print("OnSubFinish201001")
end

function Quest2010:OnSubFailed201001(arg1)
    print("OnSubFailed201001")
end

function Quest2010:OnSubStart201002(arg1)
    print("OnSubStart201002")
    self:NpcCreate(arg1, npcs.Npc12013Data.id, 1)
    self:RequestInteraction(npcs.Npc12013Data.alias)
end

function Quest2010:OnSubFinish201002(arg1)
    print("OnSubFinish201002")
    self:SafeDestroyQuestNpc(npcs.Npc12013Data.alias, 3)
end

function Quest2010:OnSubFailed201002(arg1)
    print("OnSubFailed201002")
end

function Quest2010:OnSubStart201003(arg1)
    print("OnSubStart201003")
    actorMgr:CreateActorWithPos("Q2010Trigger1", "Actor/Gadget/Q2010Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q201004Zheping").pos, sceneData:GetDummyPoint(3, "Q201004Zheping").rot, true, false, 3)
end

function Quest2010:OnSubFinish201003(arg1)
    print("OnSubFinish201003")
end

function Quest2010:OnSubFailed201003(arg1)
    print("OnSubFailed201003")
end

function Quest2010:OnSubStart201004(arg1)
    print("OnSubStart201004")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12013Data.id, 1, npcs.Npc12013Data.alias)
end

function Quest2010:OnSubFinish201004(arg1)
    print("OnSubFinish201004")
    self:SafeDestroyQuestNpc(npcs.Npc12013Data.alias, 3)
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 2010)
    end)
end

function Quest2010:OnSubFailed201004(arg1)
    print("OnSubFailed201004")
end

function Quest2010:OnSubStart201005(arg1)
    print("OnSubStart201005")
    self:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1037Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc3146Data.id, 2)
    actorMgr:CreateActorWithPos("Q2010Trigger2", "Actor/Gadget/Q2010Trigger2", 70900002, 0, {x = -3800.282, y = 171.9645, z = -709.7951}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest2010:OnSubFinish201005(arg1)
    print("OnSubFinish201005")
end

function Quest2010:OnSubFailed201005(arg1)
    print("OnSubFailed201005")
end

function Quest2010:OnSubStart201006(arg1)
    print("OnSubStart201006")
    self:RequestInteraction(npcs.Npc1037Data.alias)
end

function Quest2010:OnSubFinish201006(arg1)
    print("OnSubFinish201006")
end

function Quest2010:OnSubFailed201006(arg1)
    print("OnSubFailed201006")
end

function Quest2010:OnSubStart201012(arg1)
    print("OnSubStart201012")
    self:CreateQuestNpc(arg1, npcs.Npc12146Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12147Data.id, 2)
    actorMgr:CreateActorWithPos("Q2010Trigger3", "Actor/Gadget/Q2010Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q201012Soldier1").pos, sceneData:GetDummyPoint(3, "Q201012Soldier1").rot, true, false, 3)
end

function Quest2010:OnSubFinish201012(arg1)
    print("OnSubFinish201012")
end

function Quest2010:OnSubFailed201012(arg1)
    print("OnSubFailed201012")
end

function Quest2010:OnSubStart201013(arg1)
    print("OnSubStart201013")
end

function Quest2010:OnSubFinish201013(arg1)
    print("OnSubFinish201013")
end

function Quest2010:OnSubFailed201013(arg1)
    print("OnSubFailed201013")
end

function Quest2010:OnSubStart201017(arg1)
    print("OnSubStart201017")
end

function Quest2010:OnSubFinish201017(arg1)
    print("OnSubFinish201017")
end

function Quest2010:OnSubFailed201017(arg1)
    print("OnSubFailed201017")
end

function Quest2010:OnSubStart201007(arg1)
    print("OnSubStart201007")
end

function Quest2010:OnSubFinish201007(arg1)
    print("OnSubFinish201007")
    self:SafeDestroyQuestNpc(npcs.Npc12146Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12147Data.alias, 3)
end

function Quest2010:OnSubFailed201007(arg1)
    print("OnSubFailed201007")
end

function Quest2010:OnSubStart201014(arg1)
    print("OnSubStart201014")
    self:CallDelay(2, function(arg1)
        actorMgr:CreateActorWithPos("Q2010Trigger7", "Actor/Gadget/Q2010Trigger7", 70900002, 0, sceneData:GetDummyPoint(3, "Q201014Player").pos, sceneData:GetDummyPoint(3, "Q201014Player").rot, true, false, 3)
    end)
end

function Quest2010:OnSubFinish201014(arg1)
    print("OnSubFinish201014")
end

function Quest2010:OnSubFailed201014(arg1)
    print("OnSubFailed201014")
end

function Quest2010:OnSubStart201010(arg1)
    print("OnSubStart201010")
    self:CreateQuestNpc(arg1, npcs.Npc12212Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12212Data.alias):DoFreeStyle(3, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12213Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12213Data.alias):DoFreeStyle(2, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12214Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12214Data.alias):DoFreeStyle(2, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q2010Trigger4", "Actor/Gadget/Q2010Trigger4", 70900002, 0, {x = -3927.787, y = 200.4694, z = -1134.767}, {x = 0, y = 0, z = 0}, true, false)
    actorMgr:CreateActorWithPos("Q2010Trigger5", "Actor/Gadget/Q2010Trigger5", 70900002, 0, {x = -3904.68, y = 200.19, z = -1158.887}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest2010:OnSubFinish201010(arg1)
    print("OnSubFinish201010")
    self:ActorDestroy("Q2010Trigger4")
    self:ActorDestroy("Q2010Trigger5")
end

function Quest2010:OnSubFailed201010(arg1)
    print("OnSubFailed201010")
end

function Quest2010:OnSubStart201016(arg1)
    print("OnSubStart201016")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12098Data.id, 3, npcs.Npc12098Data.alias)
end

function Quest2010:OnSubFinish201016(arg1)
    print("OnSubFinish201016")
end

function Quest2010:OnSubFailed201016(arg1)
    print("OnSubFailed201016")
end

function Quest2010:OnSubStart201018(arg1)
    print("OnSubStart201018")
end

function Quest2010:OnSubFinish201018(arg1)
    print("OnSubFinish201018")
    self:SafeDestroyQuestNpc(npcs.Npc12212Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12213Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12214Data.alias, 3)
end

function Quest2010:OnSubFailed201018(arg1)
    print("OnSubFailed201018")
end

function Quest2010:OnSubStart201008(arg1)
    print("OnSubStart201008")
end

function Quest2010:OnSubFinish201008(arg1)
    print("OnSubFinish201008")
end

function Quest2010:OnSubFailed201008(arg1)
    print("OnSubFailed201008")
end

function Quest2010:OnSubStart201015(arg1)
    print("OnSubStart201015")
    self:CallDelay(2, function(arg1)
        actorMgr:CreateActorWithPos("Q2010Trigger6", "Actor/Gadget/Q2010Trigger6", 70900002, 0, {x = -3918.388, y = 200.2269, z = -1146.262}, {x = 0, y = 0, z = 0}, true, false)
    end)
end

function Quest2010:OnSubFinish201015(arg1)
    print("OnSubFinish201015")
    self:SafeDestroyQuestNpc(npcs.Npc12013Data.alias, 3)
end

function Quest2010:OnSubFailed201015(arg1)
    print("OnSubFailed201015")
end

function Quest2010:OnSubStart201011(arg1)
    print("OnSubStart201011")
end

function Quest2010:OnSubFinish201011(arg1)
    print("OnSubFinish201011")
    self.LevelLoadFinishSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc12070Data.id)
        self:TransmitPlayerWithTextById(arg1, 1, {"QUEST_Message_Q2010091"}, 0.5)
    end)
end

function Quest2010:OnSubFailed201011(arg1)
    print("OnSubFailed201011")
end

function Quest2010:OnSubStart201009(arg1)
    print("OnSubStart201009")
    actorMgr:CreateActorWithPos("Q2010Trigger8", "Actor/Gadget/Q2010Trigger8", 70900002, 0, sceneData:GetDummyPoint(3, "Q201009Zheping").pos, sceneData:GetDummyPoint(3, "Q201009Zheping").rot, true, false, 3)
end

function Quest2010:OnSubFinish201009(arg1)
    print("OnSubFinish201009")
    self:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
    self:NpcDestroy(npcs.Npc12070Data.alias, 3)
end

function Quest2010:OnSubFailed201009(arg1)
    print("OnSubFailed201009")
end

return Quest2010
