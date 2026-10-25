require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12026 = class("Quest12026", QuestActorProxy)
Quest12026.defaultAlias = "Quest12026"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest12026:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest12026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1202601"] = self.OnSubStart1202601,
        ["1202602"] = self.OnSubStart1202602,
        ["1202603"] = self.OnSubStart1202603,
        ["1202624"] = self.OnSubStart1202624,
        ["1202604"] = self.OnSubStart1202604,
        ["1202605"] = self.OnSubStart1202605,
        ["1202606"] = self.OnSubStart1202606,
        ["1202607"] = self.OnSubStart1202607,
        ["1202616"] = self.OnSubStart1202616,
        ["1202622"] = self.OnSubStart1202622,
        ["1202609"] = self.OnSubStart1202609,
        ["1202619"] = self.OnSubStart1202619,
        ["1202610"] = self.OnSubStart1202610,
        ["1202608"] = self.OnSubStart1202608,
        ["1202620"] = self.OnSubStart1202620,
        ["1202611"] = self.OnSubStart1202611,
        ["1202612"] = self.OnSubStart1202612,
        ["1202613"] = self.OnSubStart1202613,
        ["1202614"] = self.OnSubStart1202614,
        ["1202623"] = self.OnSubStart1202623,
        ["1202615"] = self.OnSubStart1202615,
        ["1202617"] = self.OnSubStart1202617,
        ["1202618"] = self.OnSubStart1202618,
        ["1202621"] = self.OnSubStart1202621
    }
end

function Quest12026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1202601"] = self.OnSubFinish1202601,
        ["1202602"] = self.OnSubFinish1202602,
        ["1202603"] = self.OnSubFinish1202603,
        ["1202624"] = self.OnSubFinish1202624,
        ["1202604"] = self.OnSubFinish1202604,
        ["1202605"] = self.OnSubFinish1202605,
        ["1202606"] = self.OnSubFinish1202606,
        ["1202607"] = self.OnSubFinish1202607,
        ["1202616"] = self.OnSubFinish1202616,
        ["1202622"] = self.OnSubFinish1202622,
        ["1202609"] = self.OnSubFinish1202609,
        ["1202619"] = self.OnSubFinish1202619,
        ["1202610"] = self.OnSubFinish1202610,
        ["1202608"] = self.OnSubFinish1202608,
        ["1202620"] = self.OnSubFinish1202620,
        ["1202611"] = self.OnSubFinish1202611,
        ["1202612"] = self.OnSubFinish1202612,
        ["1202613"] = self.OnSubFinish1202613,
        ["1202614"] = self.OnSubFinish1202614,
        ["1202623"] = self.OnSubFinish1202623,
        ["1202615"] = self.OnSubFinish1202615,
        ["1202617"] = self.OnSubFinish1202617,
        ["1202618"] = self.OnSubFinish1202618,
        ["1202621"] = self.OnSubFinish1202621
    }
end

function Quest12026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1202606"] = self.OnSubFailed1202606}
end

function Quest12026:Start()
    print("Start")
end

function Quest12026:OnDestroy()
    print("OnDestroy")
end

function Quest12026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12026:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12026:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12026:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:FinishQuestID(false, 1202624)
    elseif arg1 == 1202607 then
        self:SpawnGadgetById(1202615, gadgets.Gadget70710580Data.id, 1)
    elseif arg1 == 1202608 then
        self:UnSpawn(gadgets.Gadget70710580Data.alias)
    end
end

function Quest12026:CheckDistance04()
    print("CheckDistance04")
    if self:GetSubQuestState(1202604) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = sceneData:GetDummyPoint(3, "Q1202621_tofailq07").pos
        local dist = M.Dist(pos, avatarPos)
        print("StartCheck")
        if 66 < dist then
            actorUtils.FinishQuestID(true, 1202604)
        else
            self:CallDelay(2, self.NormalCheck04)
        end
    end
end

function Quest12026:NormalCheck04()
    print("NormalCheck04")
    self:CheckDistance04()
end

function Quest12026:CheckDistance06()
    print("CheckDistance06")
    if self:GetSubQuestState(1202606) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = sceneData:GetDummyPoint(3, "Q1202621_tofailq07").pos
        local dist = M.Dist(pos, avatarPos)
        print("StartCheck")
        if 56 < dist then
            actorUtils.FinishQuestID(true, 1202606)
        else
            self:CallDelay(2, self.NormalCheck06)
        end
    end
end

function Quest12026:NormalCheck06()
    print("NormalCheck06")
    self:CheckDistance06()
end

function Quest12026:OnSubStart1202601(arg1)
    print("OnSubStart1202601")
    self:CreateQuestNpc(arg1, npcs.Npc12203Data.id, 1)
    actorMgr:CreateActorWithPos("Q1202601Trigger", "Actor/Gadget/Q1202601Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202601_shouhaizhe").pos, sceneData:GetDummyPoint(3, "Q1202601_shouhaizhe").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc12203Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12380Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12382Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12201Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12202Data.id, 3)
end

function Quest12026:OnSubFinish1202601(arg1)
    print("OnSubFinish1202601")
end

function Quest12026:OnSubStart1202602(arg1)
    print("OnSubStart1202602")
    actorMgr:CreateActorWithPos("Q1202602Trigger", "Actor/Gadget/Q1202602Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202601_shouhaizhe").pos, sceneData:GetDummyPoint(3, "Q1202601_shouhaizhe").rot, true, false, 3)
end

function Quest12026:OnSubFinish1202602(arg1)
    print("OnSubFinish1202602")
    self:ActorDestroy("Q1202602Trigger")
end

function Quest12026:OnSubStart1202603(arg1)
    print("OnSubStart1202603")
    actorMgr:CreateActorWithPos("Q1202604Trigger", "Actor/Gadget/Q1202604Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202603_hidingpoint").pos, sceneData:GetDummyPoint(3, "Q1202603_hidingpoint").rot, true, false, 3)
end

function Quest12026:OnSubFinish1202603(arg1)
    print("OnSubFinish1202603")
    self:ShowBlackScreen(0.4, 2, 0.4, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    end, nil, nil, nil, false, true)

    self:ActorDestroy("Q1202604Trigger")
end

function Quest12026:OnSubStart1202624(arg1)
    print("OnSubStart1202624")
end

function Quest12026:OnSubFinish1202624(arg1)
    print("OnSubFinish1202624")
end

function Quest12026:OnSubStart1202604(arg1)
    print("OnSubStart1202604")
    actorMgr:CreateActorWithPos("Q1202604TriggertoFail", "Actor/Gadget/Q1202604TriggertoFail", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202621_tofailq07").pos, sceneData:GetDummyPoint(3, "Q1202621_tofailq07").rot, true, false, 3)
    self:CheckDistance04()
end

function Quest12026:OnSubFinish1202604(arg1)
    print("OnSubFinish1202604")
    self:SafeDestroyQuestNpc(npcs.Npc12203Data.alias, 3)
    self:ActorDestroy("Q1202604TriggertoFail")
end

function Quest12026:OnSubStart1202605(arg1)
    print("OnSubStart1202605")
    actorMgr:CreateActorWithPos("Q1202605TriggerItto", "Actor/Gadget/Q1202605TriggerItto", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202606_Itto").pos, sceneData:GetDummyPoint(3, "Q1202606_Itto").rot, true, false, 3)
end

function Quest12026:OnSubFinish1202605(arg1)
    print("OnSubFinish1202605")
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:ActorDestroy("Q1202605TriggerItto")
end

function Quest12026:OnSubStart1202606(arg1)
    print("OnSubStart1202606")
    actorMgr:CreateActorWithPos("Q1202606TriggertoFail", "Actor/Gadget/Q1202606TriggertoFail", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202621_tofailq07").pos, sceneData:GetDummyPoint(3, "Q1202621_tofailq07").rot, true, false, 3)
    self:CheckDistance06()
end

function Quest12026:OnSubFinish1202606(arg1)
    print("OnSubFinish1202606")
    self:ActorDestroy("Q1202606TriggertoFail")
end

function Quest12026:OnSubFailed1202606(arg1)
    print("OnSubFailed1202606")
    self:ActorDestroy("Q1202606TriggertoFail")
end

function Quest12026:OnSubStart1202607(arg1)
    print("OnSubStart1202607")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:ShowBlackScreen(0.4, 2, 0.4, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12231Data.id, 1)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12277Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc1044Data.alias)
        end, nil, nil, "", false, true)
    end)
end

function Quest12026:OnSubFinish1202607(arg1)
    print("OnSubFinish1202607")
    self:SafeDestroyQuestNpc(npcs.Npc12231Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:TransmitPlayerWithTextByQuestId(1202607, 1202616, datas.TextmapId1202607, 3, function(arg1)
        arg1:CallDelay(1, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.kaiche1202602, nil, 12026)
        end)
    end, function(arg1)
        arg1:SetQuestVar(1202607, 2, 1)
    end)
end

function Quest12026:OnSubStart1202616(arg1)
    print("OnSubStart1202616")
    actorMgr:CreateActorWithPos("Q1202616Trigger", "Actor/Gadget/Q1202616Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202616_questpoint").pos, sceneData:GetDummyPoint(3, "Q1202616_questpoint").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1202609Trigger", "Actor/Gadget/Q1202609Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202609_questpoint").pos, sceneData:GetDummyPoint(3, "Q1202609_questpoint").rot, true, false, 3)
end

function Quest12026:OnSubFinish1202616(arg1)
    print("OnSubFinish1202616")
end

function Quest12026:OnSubStart1202622(arg1)
    print("OnSubStart1202622")
    actorMgr:CreateActorWithPos("Q1202622Trigger", "Actor/Gadget/Q1202622Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202609_questpoint").pos, sceneData:GetDummyPoint(3, "Q1202609_questpoint").rot, true, false, 3)
end

function Quest12026:OnSubFinish1202622(arg1)
    print("OnSubFinish1202622")
end

function Quest12026:OnSubStart1202609(arg1)
    print("OnSubStart1202609")
    self:SpawnGadgetById(1202609, gadgets.Gadget70710554Data.id, 1)
end

function Quest12026:OnSubFinish1202609(arg1)
    print("OnSubFinish1202609")
    self:NarratorOnlyTaskByData(datas.kaiche1202604, nil, 12026)
    self:UnSpawn(gadgets.Gadget70710554Data.alias)
    self:ActorDestroy("Q1202609Trigger")
end

function Quest12026:OnSubStart1202619(arg1)
    print("OnSubStart1202619")
end

function Quest12026:OnSubFinish1202619(arg1)
    print("OnSubFinish1202619")
    self:NarratorOnlyTaskByData(datas.kaiche1202605, nil, 12026)
end

function Quest12026:OnSubStart1202610(arg1)
    print("OnSubStart1202610")
    actorMgr:CreateActorWithPos("Q1202610Trigger", "Actor/Gadget/Q1202610Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202610_questpoint").pos, sceneData:GetDummyPoint(3, "Q1202610_questpoint").rot, true, false, 3)
end

function Quest12026:OnSubFinish1202610(arg1)
    print("OnSubFinish1202610")
    self:NarratorOnlyTaskByData(datas.kaiche1202606, nil, 12026)
end

function Quest12026:OnSubStart1202608(arg1)
    print("OnSubStart1202608")
    actorMgr:CreateActorWithPos("Q1202605Trigger", "Actor/Gadget/Q1202605Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Talk1202608_itto").pos, sceneData:GetDummyPoint(3, "Talk1202608_itto").rot, true, false, 3)
end

function Quest12026:OnSubFinish1202608(arg1)
    print("OnSubFinish1202608")
    self:TryPauseCurAutoNarrator()
end

function Quest12026:OnSubStart1202620(arg1)
    print("OnSubStart1202620")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc1044Data.alias)
    end, nil, nil, "", false, true)
end

function Quest12026:OnSubFinish1202620(arg1)
    print("OnSubFinish1202620")
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
end

function Quest12026:OnSubStart1202611(arg1)
    print("OnSubStart1202611")
    actorMgr:CreateActorWithPos("Q1202611Trigger", "Actor/Gadget/Q1202611Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202611_dungeon").pos, sceneData:GetDummyPoint(3, "Q1202611_dungeon").rot, true, false, 3)
    self:SpawnGadget(arg1, 70710062, 1)
end

function Quest12026:OnSubFinish1202611(arg1)
    print("OnSubFinish1202611")
end

function Quest12026:OnSubStart1202612(arg1)
    print("OnSubStart1202612")
    self:CreateQuestNpc(arg1, npcs.Npc12233Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12234Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12335Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12336Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12384Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12385Data.id, 6)
    self:GetQuestNpcActor(npcs.Npc12233Data.alias):DoFreeStyle(1070, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12234Data.alias):DoFreeStyle(4050, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12335Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12336Data.alias):DoFreeStyle(4130, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12384Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12385Data.alias):DoFreeStyle(4180, true, nil, true, true, false)
end

function Quest12026:OnSubFinish1202612(arg1)
    print("OnSubFinish1202612")
end

function Quest12026:OnSubStart1202613(arg1)
    print("OnSubStart1202613")
    self:CallDelay(1.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc12233Data.alias)
    end)
end

function Quest12026:OnSubFinish1202613(arg1)
    print("OnSubFinish1202613")
    self:SafeDestroyQuestNpc(npcs.Npc12233Data.alias, 20119)
    self:SafeDestroyQuestNpc(npcs.Npc12234Data.alias, 20119)
    self:SafeDestroyQuestNpc(npcs.Npc12335Data.alias, 20119)
    self:SafeDestroyQuestNpc(npcs.Npc12336Data.alias, 20119)
    self:SafeDestroyQuestNpc(npcs.Npc12384Data.alias, 20119)
    self:SafeDestroyQuestNpc(npcs.Npc12385Data.alias, 20119)
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.kaiche1202607, nil, 12026)
    end)
end

function Quest12026:OnSubStart1202614(arg1)
    print("OnSubStart1202614")
end

function Quest12026:OnSubFinish1202614(arg1)
    print("OnSubFinish1202614")
end

function Quest12026:OnSubStart1202623(arg1)
    print("OnSubStart1202623")
    actorMgr:CreateActorWithPos("Q1202623Trigger", "Actor/Gadget/Q1202623Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202603_questpoint").pos, sceneData:GetDummyPoint(3, "Q1202603_questpoint").rot, true, false, 3)
end

function Quest12026:OnSubFinish1202623(arg1)
    print("OnSubFinish1202623")
    self:ActorDestroy("Q1202623Trigger")
end

function Quest12026:OnSubStart1202615(arg1)
    print("OnSubStart1202615")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12230Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12275Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc12230Data.alias)
    end)
end

function Quest12026:OnSubFinish1202615(arg1)
    print("OnSubFinish1202615")
    self:SafeDestroyQuestNpc(npcs.Npc12230Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12275Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710580Data.alias)
    self:TransmitPlayerById(arg1, 1202617)
end

function Quest12026:OnSubStart1202617(arg1)
    print("OnSubStart1202617")
    actorMgr:CreateActorWithPos("Q1202617Trigger", "Actor/Gadget/Q1202617Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202617_Itto").pos, sceneData:GetDummyPoint(3, "Q1202617_Itto").rot, true, false, 3)
    self:UnSpawn(gadgets.Gadget70710062Data.alias)
end

function Quest12026:OnSubFinish1202617(arg1)
    print("OnSubFinish1202617")
    self:ActorDestroy("Q1202617Trigger")
    self:ShowBlackScreen(0.4, 2, 0.4, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc12230Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc12231Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end, function(arg1)
        arg1:CallDelay(1, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.kaiche1202608, nil, 12026)
        end)
    end, nil, "", false, true)
end

function Quest12026:OnSubStart1202618(arg1)
    print("OnSubStart1202618")
    self:CreateQuestNpc(arg1, npcs.Npc12201Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12202Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12233Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12234Data.id, 4)
    actorMgr:CreateActorWithPos("Q1202618Trigger", "Actor/Gadget/Q1202618Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202618_guipopo").pos, sceneData:GetDummyPoint(3, "Q1202618_guipopo").rot, true, false, 3)
end

function Quest12026:OnSubFinish1202618(arg1)
    print("OnSubFinish1202618")
    self:TransmitPlayerByQuestId(1202618, 1202618)
    self:SafeDestroyQuestNpc(npcs.Npc12202Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12233Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12234Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12380Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12382Data.alias, 3)
end

function Quest12026:OnSubStart1202621(arg1)
    print("OnSubStart1202621")
    actorMgr:CreateActorWithPos("Q1202621Trigger", "Actor/Gadget/Q1202621Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202621_tofailq07").pos, sceneData:GetDummyPoint(3, "Q1202621_tofailq07").rot, true, false, 3)
end

function Quest12026:OnSubFinish1202621(arg1)
    print("OnSubFinish1202621")
end

return Quest12026
