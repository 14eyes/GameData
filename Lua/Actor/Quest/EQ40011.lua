require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40011 = class("Quest40011", QuestActorProxy)
Quest40011.defaultAlias = "Quest40011"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4001112"] = self.OnSubStart4001112,
        ["4001116"] = self.OnSubStart4001116,
        ["4001115"] = self.OnSubStart4001115,
        ["4001101"] = self.OnSubStart4001101,
        ["4001102"] = self.OnSubStart4001102,
        ["4001108"] = self.OnSubStart4001108,
        ["4001113"] = self.OnSubStart4001113,
        ["4001109"] = self.OnSubStart4001109,
        ["4001110"] = self.OnSubStart4001110,
        ["4001114"] = self.OnSubStart4001114,
        ["4001117"] = self.OnSubStart4001117,
        ["4001118"] = self.OnSubStart4001118,
        ["4001119"] = self.OnSubStart4001119,
        ["4001103"] = self.OnSubStart4001103,
        ["4001120"] = self.OnSubStart4001120,
        ["4001104"] = self.OnSubStart4001104,
        ["4001105"] = self.OnSubStart4001105,
        ["4001106"] = self.OnSubStart4001106,
        ["4001107"] = self.OnSubStart4001107,
        ["4001111"] = self.OnSubStart4001111
    }
end

function Quest40011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4001112"] = self.OnSubFinish4001112,
        ["4001116"] = self.OnSubFinish4001116,
        ["4001115"] = self.OnSubFinish4001115,
        ["4001101"] = self.OnSubFinish4001101,
        ["4001102"] = self.OnSubFinish4001102,
        ["4001108"] = self.OnSubFinish4001108,
        ["4001113"] = self.OnSubFinish4001113,
        ["4001109"] = self.OnSubFinish4001109,
        ["4001110"] = self.OnSubFinish4001110,
        ["4001114"] = self.OnSubFinish4001114,
        ["4001117"] = self.OnSubFinish4001117,
        ["4001118"] = self.OnSubFinish4001118,
        ["4001119"] = self.OnSubFinish4001119,
        ["4001103"] = self.OnSubFinish4001103,
        ["4001120"] = self.OnSubFinish4001120,
        ["4001104"] = self.OnSubFinish4001104,
        ["4001105"] = self.OnSubFinish4001105,
        ["4001106"] = self.OnSubFinish4001106,
        ["4001107"] = self.OnSubFinish4001107,
        ["4001111"] = self.OnSubFinish4001111
    }
end

function Quest40011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4001112"] = self.OnSubFailed4001112,
        ["4001116"] = self.OnSubFailed4001116,
        ["4001115"] = self.OnSubFailed4001115,
        ["4001101"] = self.OnSubFailed4001101,
        ["4001102"] = self.OnSubFailed4001102,
        ["4001108"] = self.OnSubFailed4001108,
        ["4001113"] = self.OnSubFailed4001113,
        ["4001109"] = self.OnSubFailed4001109,
        ["4001110"] = self.OnSubFailed4001110,
        ["4001114"] = self.OnSubFailed4001114,
        ["4001117"] = self.OnSubFailed4001117,
        ["4001118"] = self.OnSubFailed4001118,
        ["4001119"] = self.OnSubFailed4001119,
        ["4001103"] = self.OnSubFailed4001103,
        ["4001120"] = self.OnSubFailed4001120,
        ["4001104"] = self.OnSubFailed4001104,
        ["4001105"] = self.OnSubFailed4001105,
        ["4001106"] = self.OnSubFailed4001106,
        ["4001107"] = self.OnSubFailed4001107,
        ["4001111"] = self.OnSubFailed4001111
    }
end

function Quest40011:Start()
    print("Start")
end

function Quest40011:OnDestroy()
    print("OnDestroy")
end

function Quest40011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40011:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
    self:SafeDestroyQuestNpc(npcs.Npc2603Data.alias, 4)
    self:SafeDestroyQuestNpc(npcs.Npc2614Data.alias, 4)
    self:ActorDestroy("Q40011CampTrigger")
    self:ActorDestroy("Q40011CampTrigger2")
end

function Quest40011:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40011:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:FinishQuestID(false, 4001102)
    elseif arg1 == 2 then
        self:FinishQuestID(false, 4001108)
    elseif arg1 == 3 then
        self:FinishQuestID(false, 4001113)
    elseif arg1 == 4 then
        self:FinishQuestID(false, 4001114)
    elseif arg1 == 5 then
        self:UnSpawn(gadgets.Gadget70710429Data.alias)
        self:SpawnGadgetById(4001111, gadgets.Gadget70710429Data.id, 1)
    elseif arg1 == 6 then
        self:UnSpawn(gadgets.Gadget70710429Data.alias)
    elseif arg1 == 7 then
        globalActor:ChangeDay24Time(9, true)
    end
end

function Quest40011:OnSubStart4001101(arg1)
    print("OnSubStart4001101")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc2603Data.id, 2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc2614Data.id, 3)
    end, nil, nil, "")
end

function Quest40011:OnSubFinish4001101(arg1)
    print("OnSubFinish4001101")
end

function Quest40011:OnSubFailed4001101(arg1)
    print("OnSubFailed4001101")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
    self:SafeDestroyQuestNpc(npcs.Npc2603Data.alias, 4)
    self:SafeDestroyQuestNpc(npcs.Npc2614Data.alias, 4)
end

function Quest40011:OnSubStart4001102(arg1)
    print("OnSubStart4001102")
end

function Quest40011:OnSubFinish4001102(arg1)
    print("OnSubFinish4001102")
end

function Quest40011:OnSubFailed4001102(arg1)
    print("OnSubFailed4001102")
end

function Quest40011:OnSubStart4001103(arg1)
    print("OnSubStart4001103")
end

function Quest40011:OnSubFinish4001103(arg1)
    print("OnSubFinish4001103")
end

function Quest40011:OnSubFailed4001103(arg1)
    print("OnSubFailed4001103")
end

function Quest40011:OnSubStart4001104(arg1)
    print("OnSubStart4001104")
    self:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 1)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:TransmitPlayerWithTextByQuestId(4001104, 1, datas.TextmapId, 5)
        arg1:UnSpawn(gadgets.Gadget45001001Data.alias)
    end)
end

function Quest40011:OnSubFinish4001104(arg1)
    print("OnSubFinish4001104")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
end

function Quest40011:OnSubFailed4001104(arg1)
    print("OnSubFailed4001104")
end

function Quest40011:OnSubStart4001105(arg1)
    print("OnSubStart4001105")
end

function Quest40011:OnSubFinish4001105(arg1)
    print("OnSubFinish4001105")
end

function Quest40011:OnSubFailed4001105(arg1)
    print("OnSubFailed4001105")
end

function Quest40011:OnSubStart4001106(arg1)
    print("OnSubStart4001106")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc10090Data.id, 1, npcs.Npc10090Data.alias)
end

function Quest40011:OnSubFinish4001106(arg1)
    print("OnSubFinish4001106")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
end

function Quest40011:OnSubFailed4001106(arg1)
    print("OnSubFailed4001106")
end

function Quest40011:OnSubStart4001107(arg1)
    print("OnSubStart4001107")
end

function Quest40011:OnSubFinish4001107(arg1)
    print("OnSubFinish4001107")
end

function Quest40011:OnSubFailed4001107(arg1)
    print("OnSubFailed4001107")
end

function Quest40011:OnSubStart4001108(arg1)
    print("OnSubStart4001108")
end

function Quest40011:OnSubFinish4001108(arg1)
    print("OnSubFinish4001108")
end

function Quest40011:OnSubFailed4001108(arg1)
    print("OnSubFailed4001108")
end

function Quest40011:OnSubStart4001109(arg1)
    print("OnSubStart4001109")
end

function Quest40011:OnSubFinish4001109(arg1)
    print("OnSubFinish4001109")
end

function Quest40011:OnSubFailed4001109(arg1)
    print("OnSubFailed4001109")
end

function Quest40011:OnSubStart4001110(arg1)
    print("OnSubStart4001110")
    self:GetQuestNpcActor(npcs.Npc10090Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc2603Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc2614Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
end

function Quest40011:OnSubFinish4001110(arg1)
    print("OnSubFinish4001110")
end

function Quest40011:OnSubFailed4001110(arg1)
    print("OnSubFailed4001110")
end

function Quest40011:OnSubStart4001111(arg1)
    print("OnSubStart4001111")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc2614Data.id, 1, npcs.Npc2614Data.alias)
end

function Quest40011:OnSubFinish4001111(arg1)
    print("OnSubFinish4001111")
    self:SafeDestroyQuestNpc(npcs.Npc2614Data.alias, 4)
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(815, function(arg1)
            actorUtils.ShowSummerTimeStagePage(2)
        end)
    end)
end

function Quest40011:OnSubFailed4001111(arg1)
    print("OnSubFailed4001111")
end

function Quest40011:OnSubStart4001113(arg1)
    print("OnSubStart4001113")
end

function Quest40011:OnSubFinish4001113(arg1)
    print("OnSubFinish4001113")
end

function Quest40011:OnSubFailed4001113(arg1)
    print("OnSubFailed4001113")
end

function Quest40011:OnSubStart4001114(arg1)
    print("OnSubStart4001114")
    if self:GetQuestNpcActor(npcs.Npc10090Data.alias) == nil then
        self:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 1)
    end

    if self:GetQuestNpcActor(npcs.Npc2603Data.alias) == nil then
        self:CreateQuestNpc(arg1, npcs.Npc2603Data.id, 2)
    end

    if self:GetQuestNpcActor(npcs.Npc2614Data.alias) == nil then
        self:CreateQuestNpc(arg1, npcs.Npc2614Data.id, 3)
    end

    self:GetQuestNpcActor(npcs.Npc10090Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc2603Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc2614Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
end

function Quest40011:OnSubFinish4001114(arg1)
    print("OnSubFinish4001114")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
    self:SafeDestroyQuestNpc(npcs.Npc2603Data.alias, 4)
    self:SafeDestroyQuestNpc(npcs.Npc2614Data.alias, 4)
end

function Quest40011:OnSubFailed4001114(arg1)
    print("OnSubFailed4001114")
end

function Quest40011:OnSubStart4001112(arg1)
    print("OnSubStart4001112")
end

function Quest40011:OnSubFinish4001112(arg1)
    print("OnSubFinish4001112")
end

function Quest40011:OnSubFailed4001112(arg1)
    print("OnSubFailed4001112")
end

function Quest40011:OnSubStart4001115(arg1)
    print("OnSubStart4001115")
    actorMgr:CreateActorWithPos("Q40011CampTrigger2", "Actor/Gadget/Q40011CampTrigger2", 70900002, 0, sceneData:GetDummyPoint(4, "Q40011Camp").pos, sceneData:GetDummyPoint(4, "Q40011Camp").rot, true, false, 4)
end

function Quest40011:OnSubFinish4001115(arg1)
    print("OnSubFinish4001115")
    self:ActorDestroy("Q40011CampTrigger2")
end

function Quest40011:OnSubFailed4001115(arg1)
    print("OnSubFailed4001115")
end

function Quest40011:OnSubStart4001116(arg1)
    print("OnSubStart4001116")
    actorMgr:CreateActorWithPos("Q40011CampTrigger", "Actor/Gadget/Q40011CampTrigger", 70900002, 0, sceneData:GetDummyPoint(4, "Q40011Camp").pos, sceneData:GetDummyPoint(4, "Q40011Camp").rot, true, false, 4)
end

function Quest40011:OnSubFinish4001116(arg1)
    print("OnSubFinish4001116")
    self:ActorDestroy("Q40011CampTrigger")
end

function Quest40011:OnSubFailed4001116(arg1)
    print("OnSubFailed4001116")
end

function Quest40011:OnSubStart4001117(arg1)
    print("OnSubStart4001117")
end

function Quest40011:OnSubFinish4001117(arg1)
    print("OnSubFinish4001117")
end

function Quest40011:OnSubFailed4001117(arg1)
    print("OnSubFailed4001117")
end

function Quest40011:OnSubStart4001118(arg1)
    print("OnSubStart4001118")
end

function Quest40011:OnSubFinish4001118(arg1)
    print("OnSubFinish4001118")
end

function Quest40011:OnSubFailed4001118(arg1)
    print("OnSubFailed4001118")
end

function Quest40011:OnSubStart4001119(arg1)
    print("OnSubStart4001119")
end

function Quest40011:OnSubFinish4001119(arg1)
    print("OnSubFinish4001119")
end

function Quest40011:OnSubFailed4001119(arg1)
    print("OnSubFailed4001119")
end

function Quest40011:OnSubStart4001120(arg1)
    print("OnSubStart4001120")
end

function Quest40011:OnSubFinish4001120(arg1)
    print("OnSubFinish4001120")
end

function Quest40011:OnSubFailed4001120(arg1)
    print("OnSubFailed4001120")
end

return Quest40011
