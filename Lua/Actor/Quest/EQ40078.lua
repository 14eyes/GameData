require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40078 = class("Quest40078", QuestActorProxy)
Quest40078.defaultAlias = "Quest40078"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40078:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40078:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4007801"] = self.OnSubStart4007801,
        ["4007802"] = self.OnSubStart4007802,
        ["4007803"] = self.OnSubStart4007803,
        ["4007814"] = self.OnSubStart4007814,
        ["4007804"] = self.OnSubStart4007804,
        ["4007805"] = self.OnSubStart4007805,
        ["4007806"] = self.OnSubStart4007806,
        ["4007807"] = self.OnSubStart4007807,
        ["4007808"] = self.OnSubStart4007808,
        ["4007809"] = self.OnSubStart4007809,
        ["4007810"] = self.OnSubStart4007810,
        ["4007811"] = self.OnSubStart4007811,
        ["4007815"] = self.OnSubStart4007815,
        ["4007812"] = self.OnSubStart4007812,
        ["4007813"] = self.OnSubStart4007813
    }
end

function Quest40078:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4007801"] = self.OnSubFinish4007801,
        ["4007802"] = self.OnSubFinish4007802,
        ["4007803"] = self.OnSubFinish4007803,
        ["4007814"] = self.OnSubFinish4007814,
        ["4007804"] = self.OnSubFinish4007804,
        ["4007805"] = self.OnSubFinish4007805,
        ["4007806"] = self.OnSubFinish4007806,
        ["4007807"] = self.OnSubFinish4007807,
        ["4007808"] = self.OnSubFinish4007808,
        ["4007809"] = self.OnSubFinish4007809,
        ["4007810"] = self.OnSubFinish4007810,
        ["4007811"] = self.OnSubFinish4007811,
        ["4007815"] = self.OnSubFinish4007815,
        ["4007812"] = self.OnSubFinish4007812,
        ["4007813"] = self.OnSubFinish4007813
    }
end

function Quest40078:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40078:Start()
    print("Start")
end

function Quest40078:OnDestroy()
    print("OnDestroy")
end

function Quest40078:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40078:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40078:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.NPC1512Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1537Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12917Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1539Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30274Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc30274Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1060Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc30233Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc30237Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30173Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30240Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30241Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30250Data.alias, 3)
    actorMgr:GetActor("40078"):UnSpawn(gadgets.Gadget71700471Data.alias)
    actorMgr:DestroyEntityActor("Q4007805Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4007806Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4007807Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4007808Trigger", 3, false)
    self:GetQuestNpcActor(npcs.Npc30274Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc30233Data.alias):DisableInteeHeadCtrl(false)
    self:ActorDestroy("Q4007812NPCTrigger")
    self:RemoveLocalGadget(71700471, "0")
end

function Quest40078:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40078:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 400780401 then
        self:EnableElementView(true)
    elseif arg1 == 400780402 then
        self:EnableElementView(false)
    end
end

function Quest40078:OnSubStart4007801(arg1)
    print("OnSubStart4007801")
    self:CreateQuestNpc(arg1, npcs.NPC1512Data.id, 1)
end

function Quest40078:OnSubFinish4007801(arg1)
    print("OnSubFinish4007801")
    self:SafeDestroyQuestNpc(npcs.NPC1512Data.alias, 3)
end

function Quest40078:OnSubStart4007802(arg1)
    print("OnSubStart4007802")
    self:CreateQuestNpcWithTriggerBlack("Q4007802NPCTrigger", 4007802, npcs.QinData.id, 2, 30, 1)
end

function Quest40078:OnSubFinish4007802(arg1)
    print("OnSubFinish4007802")
end

function Quest40078:OnSubStart4007803(arg1)
    print("OnSubStart4007803")
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc30274Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc30233Data.id, 6)
    self:CreateQuestNpcWithTrigger("Q4007803NPCTrigger", 4007803, 1006, 2, 4)
    if self:GetQuestVar(4007803, 1) ~= 1 then
        self:CreateQuestNpc(arg1, npcs.Npc1060Data.id, 5)
    end

    self:GetQuestNpcActor(npcs.Npc30274Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc30233Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40078:OnSubFinish4007803(arg1)
    print("OnSubFinish4007803")
end

function Quest40078:OnSubStart4007814(arg1)
    print("OnSubStart4007814")
    if self:GetQuestVar(4007814, 1) ~= 1 then
        self:CreateQuestNpc(arg1, npcs.Npc1060Data.id, 1)
    end

    self:GetQuestNpcActor(npcs.Npc30274Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc30233Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40078:OnSubFinish4007814(arg1)
    print("OnSubFinish4007814")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4007801)
    self:GetQuestNpcActor(npcs.Npc30274Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc30233Data.alias):DisableInteeHeadCtrl(false)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc30274Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc1060Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc30233Data.alias, 1004)
    self:ActorDestroy("Q4007815Trigger")
end

function Quest40078:OnSubStart4007804(arg1)
    print("OnSubStart4007804")
    self:CreateQuestNpcWithTriggerBlack("Q4007804NPCTigger", 4007804, 12917, 2, 5, 1)
end

function Quest40078:OnSubFinish4007804(arg1)
    print("OnSubFinish4007804")
    self:SafeDestroyQuestNpc(npcs.Npc12917Data.alias, 3)
end

function Quest40078:OnSubStart4007805(arg1)
    print("OnSubStart4007805")
    self:CreateQuestNpc(arg1, npcs.Npc1539Data.id, 2)
    actorMgr:CreateActorWithPos("Q4007805Trigger", "Actor/Gadget/Q4007805Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4007805_guide").pos, sceneData:GetDummyPoint(3, "Q4007805_guide").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc1539Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest40078:OnSubFinish4007805(arg1)
    print("OnSubFinish4007805")
end

function Quest40078:OnSubStart4007806(arg1)
    print("OnSubStart4007806")
    actorMgr:CreateActorWithPos("Q4007806Trigger", "Actor/Gadget/Q4007806Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4007806_guide").pos, sceneData:GetDummyPoint(3, "Q4007806_guide").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc1539Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest40078:OnSubFinish4007806(arg1)
    print("OnSubFinish4007806")
end

function Quest40078:OnSubStart4007807(arg1)
    print("OnSubStart4007807")
    actorMgr:CreateActorWithPos("Q4007807Trigger", "Actor/Gadget/Q4007807Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4007807_guide").pos, sceneData:GetDummyPoint(3, "Q4007807_guide").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc1539Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40078:OnSubFinish4007807(arg1)
    print("OnSubFinish4007807")
end

function Quest40078:OnSubStart4007808(arg1)
    print("OnSubStart4007808")
    actorMgr:CreateActorWithPos("Q4007808Trigger", "Actor/Gadget/Q4007808Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4007808_guide").pos, sceneData:GetDummyPoint(3, "Q4007808_guide").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc1539Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40078:OnSubFinish4007808(arg1)
    print("OnSubFinish4007808")
    self:SafeDestroyQuestNpc(npcs.Npc1539Data.alias, 3)
end

function Quest40078:OnSubStart4007809(arg1)
    print("OnSubStart4007809")
    self:CreateQuestNpcWithTriggerBlack("Q4007809NPCTrigger", 4007809, 1011, 1, 17, 1)
end

function Quest40078:OnSubFinish4007809(arg1)
    print("OnSubFinish4007809")
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
end

function Quest40078:OnSubStart4007810(arg1)
    print("OnSubStart4007810")
    self:CreateQuestNpcWithTrigger("Q4007810NPCTrigger", 4007810, 1007, 1, 4)
    self:CreateLocalGadget(71700471, "0", sceneData:GetDummyPoint(1004, "Q4007810_guide").pos, sceneData:GetDummyPoint(1004, "Q4007810_guide").rot, 1004, nil, nil, 1, true)
end

function Quest40078:OnSubFinish4007810(arg1)
    print("OnSubFinish4007810")
    self:RemoveLocalGadget(71700471, "0")
    self:RemoveLocalGadget(71700472, "0")
end

function Quest40078:OnSubStart4007811(arg1)
    print("OnSubStart4007811")
    self:CreateQuestNpc(arg1, npcs.LisaData.id, 1)
    self:GetQuestNpcActor(npcs.LisaData.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
end

function Quest40078:OnSubFinish4007811(arg1)
    print("OnSubFinish4007811")
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
end

function Quest40078:OnSubStart4007815(arg1)
    print("OnSubStart4007815")
    actorMgr:CreateActorWithPos("Q4007815Trigger", "Actor/Gadget/Q4007815Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4007812_N1011").pos, sceneData:GetDummyPoint(3, "Q4007812_N1011").rot, true, false, 3)
    self:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.FinishQuestID(false, 4007815)
    end)
end

function Quest40078:OnSubFinish4007815(arg1)
    print("OnSubFinish4007815")
    self:ActorDestroy("Q4007815Trigger")
end

function Quest40078:OnSubStart4007812(arg1)
    print("OnSubStart4007812")
    self:CreateQuestNpc(arg1, npcs.QinData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc30274Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc30237Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc30173Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc30240Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc30241Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc30250Data.id, 9)
    self:CreateQuestNpcWithTriggerBlack("Q4007812NPCTrigger", 4007812, 1011, 2, 26, 1)
end

function Quest40078:OnSubFinish4007812(arg1)
    print("OnSubFinish4007812")
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30237Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30173Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30240Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30241Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30250Data.alias, 3)
end

function Quest40078:OnSubStart4007813(arg1)
    print("OnSubStart4007813")
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 2)
    self:GetQuestNpcActor(npcs.WendyData.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40078:OnSubFinish4007813(arg1)
    print("OnSubFinish4007813")
    actorMgr:CreateActorWithPos("Q4007813Trigger", "Actor/Gadget/Q4007813Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4007812_N1001").pos, sceneData:GetDummyPoint(3, "Q4007812_N1001").rot, true, false, 3)
    self:CallDelay(5, function(arg1)
        arg1:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.ShowContext("VintageMainPage")
            print("ShowContext VintageMainPage")
        end)
    end)
end

return Quest40078
