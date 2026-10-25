require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72263 = class("Quest72263", QuestActorProxy)
Quest72263.defaultAlias = "Quest72263"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72263:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72263:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7226301"] = self.OnSubStart7226301,
        ["7226302"] = self.OnSubStart7226302,
        ["7226315"] = self.OnSubStart7226315,
        ["7226303"] = self.OnSubStart7226303,
        ["7226319"] = self.OnSubStart7226319,
        ["7226305"] = self.OnSubStart7226305,
        ["7226306"] = self.OnSubStart7226306,
        ["7226307"] = self.OnSubStart7226307,
        ["7226320"] = self.OnSubStart7226320,
        ["7226308"] = self.OnSubStart7226308,
        ["7226309"] = self.OnSubStart7226309,
        ["7226310"] = self.OnSubStart7226310,
        ["7226321"] = self.OnSubStart7226321,
        ["7226311"] = self.OnSubStart7226311,
        ["7226312"] = self.OnSubStart7226312,
        ["7226313"] = self.OnSubStart7226313,
        ["7226314"] = self.OnSubStart7226314,
        ["7226304"] = self.OnSubStart7226304,
        ["7226316"] = self.OnSubStart7226316,
        ["7226317"] = self.OnSubStart7226317,
        ["7226318"] = self.OnSubStart7226318
    }
end

function Quest72263:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7226301"] = self.OnSubFinish7226301,
        ["7226302"] = self.OnSubFinish7226302,
        ["7226315"] = self.OnSubFinish7226315,
        ["7226303"] = self.OnSubFinish7226303,
        ["7226319"] = self.OnSubFinish7226319,
        ["7226305"] = self.OnSubFinish7226305,
        ["7226306"] = self.OnSubFinish7226306,
        ["7226307"] = self.OnSubFinish7226307,
        ["7226320"] = self.OnSubFinish7226320,
        ["7226308"] = self.OnSubFinish7226308,
        ["7226309"] = self.OnSubFinish7226309,
        ["7226310"] = self.OnSubFinish7226310,
        ["7226321"] = self.OnSubFinish7226321,
        ["7226311"] = self.OnSubFinish7226311,
        ["7226312"] = self.OnSubFinish7226312,
        ["7226313"] = self.OnSubFinish7226313,
        ["7226314"] = self.OnSubFinish7226314,
        ["7226304"] = self.OnSubFinish7226304,
        ["7226316"] = self.OnSubFinish7226316,
        ["7226317"] = self.OnSubFinish7226317,
        ["7226318"] = self.OnSubFinish7226318
    }
end

function Quest72263:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72263:Start()
    print("Start")
end

function Quest72263:OnDestroy()
    print("OnDestroy")
end

function Quest72263:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72263:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72263:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72263:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72263:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 722630500 then
        print("showlikingbar")
        self:ShowQuestLikingBar(72263, 20520, 40, false, "FETTER_EXP_NAME")
    elseif arg1 == 722630501 then
        self:UpdateQuestLikingBar(60, false, "FETTER_LEVEL_UP")
    elseif arg1 == 722630502 then
        self:UpdateQuestLikingBar(80, false, "FETTER_LEVEL_UP")
    elseif arg1 == 722630503 then
        self:UpdateQuestLikingBar(100, false, "FETTER_LEVEL_UP")
    elseif arg1 == 722630504 then
        quest = actorMgr:GetActor(clientData.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 7226305)
        end
    elseif arg1 == 722630599 then
        self:UpdateQuestLikingBar(0, false, "FETTER_LEVEL_DOWN")
    elseif arg1 == 722630588 then
        self:HideQuestLikingBar()
    end

    if arg1 == 722630800 then
        print("showlikingbar")
        self:ShowQuestLikingBar(72263, 20521, 30, false, "FETTER_EXP_NAME")
    elseif arg1 == 722630801 then
        self:UpdateQuestLikingBar(50, false, "FETTER_LEVEL_UP")
    elseif arg1 == 722630802 then
        self:UpdateQuestLikingBar(75, false, "FETTER_LEVEL_UP")
    elseif arg1 == 722630803 then
        self:UpdateQuestLikingBar(100, false, "FETTER_LEVEL_UP")
    elseif arg1 == 722630804 then
        quest = actorMgr:GetActor(clientData.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 7226308)
        end
    elseif arg1 == 722630899 then
        self:UpdateQuestLikingBar(0, false, "FETTER_LEVEL_DOWN")
    elseif arg1 == 722630888 then
        self:HideQuestLikingBar()
    end

    if arg1 == 722631100 then
        print("showlikingbar")
        self:ShowQuestLikingBar(72263, 20522, 20, false, "FETTER_EXP_NAME")
    elseif arg1 == 722631101 then
        self:UpdateQuestLikingBar(45, false, "FETTER_LEVEL_UP")
    elseif arg1 == 722631102 then
        self:UpdateQuestLikingBar(75, false, "FETTER_LEVEL_UP")
    elseif arg1 == 722631103 then
        self:UpdateQuestLikingBar(100, false, "FETTER_LEVEL_UP")
    elseif arg1 == 722631104 then
        quest = actorMgr:GetActor(clientData.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 7226311)
        end
    elseif arg1 == 722631199 then
        self:UpdateQuestLikingBar(0, false, "FETTER_LEVEL_DOWN")
    elseif arg1 == 722631188 then
        self:HideQuestLikingBar()
    end

    if arg1 == 2 then
        print("Yueduwu7226302")
        self:ShowReadingDialog(101660)
    end

    if arg1 == 7226303 then
        print("7226303")
        self:ShowReadingDialog(101674)
    end
end

function Quest72263:OnSubStart7226301(arg1)
    print("OnSubStart7226301")
    self:GetQuestNpcActor(npcs.NPC20520Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.NPC20520Data.id, 1)
    self:GetQuestNpcActor(npcs.NPC20521Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.NPC20521Data.id, 2)
    self:GetQuestNpcActor(npcs.NPC20522Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.NPC20522Data.id, 3)
end

function Quest72263:OnSubFinish7226301(arg1)
    print("OnSubFinish7226301")
end

function Quest72263:OnSubStart7226302(arg1)
    print("OnSubStart7226302")
    actorMgr:CreateActorWithPos("Q7226302Trigger", "Actor/Gadget/Q7226302Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226302-Trigger").pos, sceneData:GetDummyPoint(3, "WQ-7226302-Trigger").rot, true, false, 3)
end

function Quest72263:OnSubFinish7226302(arg1)
    print("OnSubFinish7226302")
end

function Quest72263:OnSubStart7226315(arg1)
    print("OnSubStart7226315")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20482Data.id, 1)
    actorMgr:CreateActorWithPos("Q7226315Trigger", "Actor/Gadget/Q7226315Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226315-Xiaoheiwu-Entrance").pos, sceneData:GetDummyPoint(3, "WQ-7226315-Xiaoheiwu-Entrance").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7226315Trigger02", "Actor/Gadget/Q7226315Trigger02", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226303-xiaoheiwu-Circle").pos, sceneData:GetDummyPoint(3, "WQ-7226303-xiaoheiwu-Circle").rot, true, false, 3)
end

function Quest72263:OnSubFinish7226315(arg1)
    print("OnSubFinish7226315")
end

function Quest72263:OnSubStart7226303(arg1)
    print("OnSubStart7226303")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:NarratorOnlyTask(datas.Q7226315KaichePaimon, nil, "")
end

function Quest72263:OnSubFinish7226303(arg1)
    print("OnSubFinish7226303")
end

function Quest72263:OnSubStart7226319(arg1)
    print("OnSubStart7226319")
    self:GetQuestNpcActor(npcs.NPC20520Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.NPC20520Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7226305TriggerPaimon", "Actor/Gadget/Q7226305TriggerPaimon", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226305-Lidao-Zhiyin").pos, sceneData:GetDummyPoint(3, "WQ-7226305-Lidao-Zhiyin").rot, true, false, 3)
end

function Quest72263:OnSubFinish7226319(arg1)
    print("OnSubFinish7226319")
end

function Quest72263:OnSubStart7226305(arg1)
    print("OnSubStart7226305")
    self:GetQuestNpcActor(npcs.NPC20520Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.NPC20520Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:HideQuestLikingBar()
end

function Quest72263:OnSubFinish7226305(arg1)
    print("OnSubFinish7226305")
    self:HideQuestLikingBar()
end

function Quest72263:OnSubStart7226306(arg1)
    print("OnSubStart7226306")
    self:GetQuestNpcActor(npcs.NPC20520Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest72263:OnSubFinish7226306(arg1)
    print("OnSubFinish7226306")
    self:NpcDestroyWithBlackscreen(3, npcs.NPC20520Data.alias)
end

function Quest72263:OnSubStart7226307(arg1)
    print("OnSubStart7226307")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest72263:OnSubFinish7226307(arg1)
    print("OnSubFinish7226307")
end

function Quest72263:OnSubStart7226320(arg1)
    print("OnSubStart7226320")
    self:GetQuestNpcActor(npcs.NPC20521Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.NPC20521Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7226308TriggerPaimon", "Actor/Gadget/Q7226308TriggerPaimon", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226308-Chengxia-Zhinyin").pos, sceneData:GetDummyPoint(3, "WQ-7226308-Chengxia-Zhinyin").rot, true, false, 3)
end

function Quest72263:OnSubFinish7226320(arg1)
    print("OnSubFinish7226320")
end

function Quest72263:OnSubStart7226308(arg1)
    print("OnSubStart7226308")
    self:GetQuestNpcActor(npcs.NPC20521Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.NPC20521Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:HideQuestLikingBar()
end

function Quest72263:OnSubFinish7226308(arg1)
    print("OnSubFinish7226308")
    self:HideQuestLikingBar()
end

function Quest72263:OnSubStart7226309(arg1)
    print("OnSubStart7226309")
    self:GetQuestNpcActor(npcs.NPC20521Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20482Data.id, 1)
end

function Quest72263:OnSubFinish7226309(arg1)
    print("OnSubFinish7226309")
    self:NpcDestroyWithBlackscreen(3, npcs.NPC20521Data.alias)
end

function Quest72263:OnSubStart7226310(arg1)
    print("OnSubStart7226310")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72263:OnSubFinish7226310(arg1)
    print("OnSubFinish7226310")
end

function Quest72263:OnSubStart7226321(arg1)
    print("OnSubStart7226321")
    self:GetQuestNpcActor(npcs.NPC20522Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.NPC20522Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc3061Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc3061Data.id, 2)
    actorMgr:CreateActorWithPos("Q7226311TriggerPaimon", "Actor/Gadget/Q7226311TriggerPaimon", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226311-Wenquan-Zhiyin").pos, sceneData:GetDummyPoint(3, "WQ-7226311-Wenquan-Zhiyin").rot, true, false, 3)
end

function Quest72263:OnSubFinish7226321(arg1)
    print("OnSubFinish7226321")
end

function Quest72263:OnSubStart7226311(arg1)
    print("OnSubStart7226311")
    self:GetQuestNpcActor(npcs.NPC20522Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.NPC20522Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:HideQuestLikingBar()
end

function Quest72263:OnSubFinish7226311(arg1)
    print("OnSubFinish7226311")
    self:SafeDestroyQuestNpc(npcs.Npc3061Data.alias, 3)
    self:HideQuestLikingBar()
end

function Quest72263:OnSubStart7226312(arg1)
    print("OnSubStart7226312")
    self:GetQuestNpcActor(npcs.NPC20522Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72263:OnSubFinish7226312(arg1)
    print("OnSubFinish7226312")
    self:NpcDestroyWithBlackscreen(3, npcs.NPC20522Data.alias)
end

function Quest72263:OnSubStart7226313(arg1)
    print("OnSubStart7226313")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72263:OnSubFinish7226313(arg1)
    print("OnSubFinish7226313")
end

function Quest72263:OnSubStart7226314(arg1)
    print("OnSubStart7226314")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7226314TriggerPaimon", "Actor/Gadget/Q7226314TriggerPaimon", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226315-Xiaoheiwu-Entrance").pos, sceneData:GetDummyPoint(3, "WQ-7226315-Xiaoheiwu-Entrance").rot, true, false, 3)
end

function Quest72263:OnSubFinish7226314(arg1)
    print("OnSubFinish7226314")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20482Data.alias)
end

function Quest72263:OnSubStart7226304(arg1)
    print("OnSubStart7226304")
end

function Quest72263:OnSubFinish7226304(arg1)
    print("OnSubFinish7226304")
end

function Quest72263:OnSubStart7226316(arg1)
    print("OnSubStart7226316")
end

function Quest72263:OnSubFinish7226316(arg1)
    print("OnSubFinish7226316")
end

function Quest72263:OnSubStart7226317(arg1)
    print("OnSubStart7226317")
end

function Quest72263:OnSubFinish7226317(arg1)
    print("OnSubFinish7226317")
end

function Quest72263:OnSubStart7226318(arg1)
    print("OnSubStart7226318")
end

function Quest72263:OnSubFinish7226318(arg1)
    print("OnSubFinish7226318")
end

return Quest72263
