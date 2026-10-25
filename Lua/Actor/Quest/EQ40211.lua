require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40211 = class("Quest40211", QuestActorProxy)
Quest40211.defaultAlias = "Quest40211"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40211:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40211:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4021101"] = self.OnSubStart4021101,
        ["4021102"] = self.OnSubStart4021102,
        ["4021103"] = self.OnSubStart4021103,
        ["4021104"] = self.OnSubStart4021104,
        ["4021135"] = self.OnSubStart4021135,
        ["4021160"] = self.OnSubStart4021160,
        ["4021136"] = self.OnSubStart4021136,
        ["4021105"] = self.OnSubStart4021105,
        ["4021106"] = self.OnSubStart4021106,
        ["4021107"] = self.OnSubStart4021107,
        ["4021137"] = self.OnSubStart4021137,
        ["4021108"] = self.OnSubStart4021108,
        ["4021143"] = self.OnSubStart4021143,
        ["4021138"] = self.OnSubStart4021138,
        ["4021142"] = self.OnSubStart4021142,
        ["4021109"] = self.OnSubStart4021109,
        ["4021149"] = self.OnSubStart4021149,
        ["4021110"] = self.OnSubStart4021110,
        ["4021147"] = self.OnSubStart4021147,
        ["4021148"] = self.OnSubStart4021148,
        ["4021130"] = self.OnSubStart4021130,
        ["4021131"] = self.OnSubStart4021131,
        ["4021132"] = self.OnSubStart4021132,
        ["4021150"] = self.OnSubStart4021150,
        ["4021111"] = self.OnSubStart4021111,
        ["4021158"] = self.OnSubStart4021158,
        ["4021112"] = self.OnSubStart4021112,
        ["4021113"] = self.OnSubStart4021113,
        ["4021144"] = self.OnSubStart4021144,
        ["4021115"] = self.OnSubStart4021115,
        ["4021116"] = self.OnSubStart4021116,
        ["4021151"] = self.OnSubStart4021151,
        ["4021117"] = self.OnSubStart4021117,
        ["4021152"] = self.OnSubStart4021152,
        ["4021153"] = self.OnSubStart4021153,
        ["4021154"] = self.OnSubStart4021154,
        ["4021118"] = self.OnSubStart4021118,
        ["4021119"] = self.OnSubStart4021119,
        ["4021114"] = self.OnSubStart4021114,
        ["4021120"] = self.OnSubStart4021120,
        ["4021156"] = self.OnSubStart4021156,
        ["4021121"] = self.OnSubStart4021121,
        ["4021155"] = self.OnSubStart4021155,
        ["4021145"] = self.OnSubStart4021145,
        ["4021122"] = self.OnSubStart4021122,
        ["4021157"] = self.OnSubStart4021157,
        ["4021123"] = self.OnSubStart4021123,
        ["4021124"] = self.OnSubStart4021124,
        ["4021139"] = self.OnSubStart4021139,
        ["4021140"] = self.OnSubStart4021140,
        ["4021141"] = self.OnSubStart4021141,
        ["4021133"] = self.OnSubStart4021133,
        ["4021134"] = self.OnSubStart4021134,
        ["4021125"] = self.OnSubStart4021125,
        ["4021126"] = self.OnSubStart4021126,
        ["4021159"] = self.OnSubStart4021159,
        ["4021146"] = self.OnSubStart4021146,
        ["4021127"] = self.OnSubStart4021127,
        ["4021128"] = self.OnSubStart4021128,
        ["4021129"] = self.OnSubStart4021129
    }
end

function Quest40211:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4021101"] = self.OnSubFinish4021101,
        ["4021102"] = self.OnSubFinish4021102,
        ["4021103"] = self.OnSubFinish4021103,
        ["4021104"] = self.OnSubFinish4021104,
        ["4021135"] = self.OnSubFinish4021135,
        ["4021160"] = self.OnSubFinish4021160,
        ["4021136"] = self.OnSubFinish4021136,
        ["4021105"] = self.OnSubFinish4021105,
        ["4021106"] = self.OnSubFinish4021106,
        ["4021107"] = self.OnSubFinish4021107,
        ["4021137"] = self.OnSubFinish4021137,
        ["4021108"] = self.OnSubFinish4021108,
        ["4021143"] = self.OnSubFinish4021143,
        ["4021138"] = self.OnSubFinish4021138,
        ["4021142"] = self.OnSubFinish4021142,
        ["4021109"] = self.OnSubFinish4021109,
        ["4021149"] = self.OnSubFinish4021149,
        ["4021110"] = self.OnSubFinish4021110,
        ["4021147"] = self.OnSubFinish4021147,
        ["4021148"] = self.OnSubFinish4021148,
        ["4021130"] = self.OnSubFinish4021130,
        ["4021131"] = self.OnSubFinish4021131,
        ["4021132"] = self.OnSubFinish4021132,
        ["4021150"] = self.OnSubFinish4021150,
        ["4021111"] = self.OnSubFinish4021111,
        ["4021158"] = self.OnSubFinish4021158,
        ["4021112"] = self.OnSubFinish4021112,
        ["4021113"] = self.OnSubFinish4021113,
        ["4021144"] = self.OnSubFinish4021144,
        ["4021115"] = self.OnSubFinish4021115,
        ["4021116"] = self.OnSubFinish4021116,
        ["4021151"] = self.OnSubFinish4021151,
        ["4021117"] = self.OnSubFinish4021117,
        ["4021152"] = self.OnSubFinish4021152,
        ["4021153"] = self.OnSubFinish4021153,
        ["4021154"] = self.OnSubFinish4021154,
        ["4021118"] = self.OnSubFinish4021118,
        ["4021119"] = self.OnSubFinish4021119,
        ["4021114"] = self.OnSubFinish4021114,
        ["4021120"] = self.OnSubFinish4021120,
        ["4021156"] = self.OnSubFinish4021156,
        ["4021121"] = self.OnSubFinish4021121,
        ["4021155"] = self.OnSubFinish4021155,
        ["4021145"] = self.OnSubFinish4021145,
        ["4021122"] = self.OnSubFinish4021122,
        ["4021157"] = self.OnSubFinish4021157,
        ["4021123"] = self.OnSubFinish4021123,
        ["4021124"] = self.OnSubFinish4021124,
        ["4021139"] = self.OnSubFinish4021139,
        ["4021140"] = self.OnSubFinish4021140,
        ["4021141"] = self.OnSubFinish4021141,
        ["4021133"] = self.OnSubFinish4021133,
        ["4021134"] = self.OnSubFinish4021134,
        ["4021125"] = self.OnSubFinish4021125,
        ["4021126"] = self.OnSubFinish4021126,
        ["4021159"] = self.OnSubFinish4021159,
        ["4021146"] = self.OnSubFinish4021146,
        ["4021127"] = self.OnSubFinish4021127,
        ["4021128"] = self.OnSubFinish4021128,
        ["4021129"] = self.OnSubFinish4021129
    }
end

function Quest40211:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4021104"] = self.OnSubFailed4021104,
        ["4021135"] = self.OnSubFailed4021135,
        ["4021160"] = self.OnSubFailed4021160,
        ["4021136"] = self.OnSubFailed4021136,
        ["4021105"] = self.OnSubFailed4021105,
        ["4021106"] = self.OnSubFailed4021106,
        ["4021107"] = self.OnSubFailed4021107,
        ["4021108"] = self.OnSubFailed4021108,
        ["4021142"] = self.OnSubFailed4021142,
        ["4021109"] = self.OnSubFailed4021109,
        ["4021130"] = self.OnSubFailed4021130,
        ["4021131"] = self.OnSubFailed4021131,
        ["4021132"] = self.OnSubFailed4021132,
        ["4021112"] = self.OnSubFailed4021112,
        ["4021115"] = self.OnSubFailed4021115,
        ["4021116"] = self.OnSubFailed4021116,
        ["4021152"] = self.OnSubFailed4021152,
        ["4021153"] = self.OnSubFailed4021153,
        ["4021154"] = self.OnSubFailed4021154,
        ["4021118"] = self.OnSubFailed4021118,
        ["4021119"] = self.OnSubFailed4021119,
        ["4021114"] = self.OnSubFailed4021114,
        ["4021120"] = self.OnSubFailed4021120,
        ["4021156"] = self.OnSubFailed4021156,
        ["4021121"] = self.OnSubFailed4021121,
        ["4021122"] = self.OnSubFailed4021122,
        ["4021123"] = self.OnSubFailed4021123,
        ["4021133"] = self.OnSubFailed4021133,
        ["4021125"] = self.OnSubFailed4021125,
        ["4021126"] = self.OnSubFailed4021126,
        ["4021146"] = self.OnSubFailed4021146,
        ["4021127"] = self.OnSubFailed4021127
    }
end

function Quest40211:Start()
    print("Start")
end

function Quest40211:OnDestroy()
    print("OnDestroy")
end

function Quest40211:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40211:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40211:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("1")
    this:UnCallDelayByQuest("2")
    this:UnCallDelayByQuest("5")
    this:UnCallDelayByQuest("4")
    this:ClearNarratorTask()
    this:RemoveLocalGadget(70330427, "1")
    this:RemoveLocalGadget(70330429, "1")
    this:RemoveLocalGadget(70330428, "1")
    this:RemoveLocalGadget(70330427, "2")
    this:RemoveLocalGadget(70330428, "2")
    this:RemoveLocalGadget(70291004, "1")
    this:RemoveLocalGadget(70711671, "1")
    this:RemoveLocalGadget(70711671, "2")
    this:RemoveLocalGadget(70711671, "3")
    this:RemoveLocalGadget(70711671, "4")
    this:ActorDestroy("Q40211Trigger")
    this:ActorDestroy("Q40211Trigger_1")
    this:ActorDestroy("Q40211Trigger_2")
    this:ActorDestroy("Q40211Trigger_3")
    this:ActorDestroy("Q40211Trigger_4")
    this:ActorDestroy("Q40211Trigger_6")
    this:ActorDestroy("Q40211Trigger_7")
    this:ActorDestroy("Q40211Trigger_8")
    this:ActorDestroy("Q40211Trigger_9")
    this:ActorDestroy("Q40211Trigger_10")
    this:ActorDestroy("Q40211Trigger_11")
    this:ActorDestroy("Q40211Trigger_12")
    this:ActorDestroy("Q40211Trigger_13")
    this:ActorDestroy("Q40211Trigger_14")
    this:ActorDestroy("Q40211Trigger_16")
    this:ActorDestroy("Q40211Trigger_17")
    this:ActorDestroy("Q40211Trigger_19")
    this:ActorDestroy("Q40211Trigger_20")
    this:ActorDestroy("Q40211Trigger_21")
    this:ActorDestroy("Q40211Trigger_22")
    this:ActorDestroy("Q40211Trigger_23")
    this:ActorDestroy("Q40211Trigger_24")
    this:ActorDestroy("Q40211Trigger_25")
    this:ActorDestroy("Q40211Trigger_5")
    this:ActorDestroy("Q40211Trigger_18")
    this:ActorDestroy("Q40211Trigger_15")
    this:ActorDestroy("Q40211Trigger_26")
    this:ActorDestroy("Q40211Trigger_27")
    this:ActorDestroy("Q40211Trigger_28")
    this:ActorDestroy("Q40211Trigger_29")
    this:ActorDestroy("Q40211Trigger_30")
    this:CancelStoryByQuest(134021106)
    this:CancelStoryByQuest(134021100)
    this:CancelStoryByQuest(134021105)
    this:CancelStoryByQuest(134021101)
    this:CancelStoryByQuest(134021103)
    this:CancelStoryByQuest(134021102)
    this:CancelStoryByQuest(134021104)
    this:DestroyQuestNpcActor(npcs.Npc13992.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1058.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1058.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1050.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1050.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1053.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1064.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc13197.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc15576.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc4476.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15978.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15979.alias, 3)
end

function Quest40211:OnMainPaused(arg1)
    print("OnMainPaused")
    this:UnCallDelayByQuest("1")
    this:UnCallDelayByQuest("2")
    this:UnCallDelayByQuest("4")
    this:UnCallDelayByQuest("5")
    this:ClearNarratorTask()
    this:RemoveLocalGadget(70330427, "1")
    this:RemoveLocalGadget(70330429, "1")
    this:RemoveLocalGadget(70330428, "1")
    this:RemoveLocalGadget(70330427, "2")
    this:RemoveLocalGadget(70330428, "2")
    this:RemoveLocalGadget(70291004, "1")
    this:RemoveLocalGadget(70711671, "1")
    this:RemoveLocalGadget(70711671, "2")
    this:RemoveLocalGadget(70711671, "3")
    this:RemoveLocalGadget(70711671, "4")
    this:ActorDestroy("Q40211Trigger")
    this:ActorDestroy("Q40211Trigger_1")
    this:ActorDestroy("Q40211Trigger_2")
    this:ActorDestroy("Q40211Trigger_3")
    this:ActorDestroy("Q40211Trigger_4")
    this:ActorDestroy("Q40211Trigger_6")
    this:ActorDestroy("Q40211Trigger_7")
    this:ActorDestroy("Q40211Trigger_8")
    this:ActorDestroy("Q40211Trigger_9")
    this:ActorDestroy("Q40211Trigger_10")
    this:ActorDestroy("Q40211Trigger_11")
    this:ActorDestroy("Q40211Trigger_12")
    this:ActorDestroy("Q40211Trigger_13")
    this:ActorDestroy("Q40211Trigger_14")
    this:ActorDestroy("Q40211Trigger_16")
    this:ActorDestroy("Q40211Trigger_17")
    this:ActorDestroy("Q40211Trigger_19")
    this:ActorDestroy("Q40211Trigger_20")
    this:ActorDestroy("Q40211Trigger_21")
    this:ActorDestroy("Q40211Trigger_22")
    this:ActorDestroy("Q40211Trigger_23")
    this:ActorDestroy("Q40211Trigger_24")
    this:ActorDestroy("Q40211Trigger_25")
    this:ActorDestroy("Q40211Trigger_5")
    this:ActorDestroy("Q40211Trigger_18")
    this:ActorDestroy("Q40211Trigger_15")
    this:ActorDestroy("Q40211Trigger_26")
    this:ActorDestroy("Q40211Trigger_27")
    this:ActorDestroy("Q40211Trigger_28")
    this:ActorDestroy("Q40211Trigger_29")
    this:ActorDestroy("Q40211Trigger_30")
    this:CancelStoryByQuest(134021106)
    this:CancelStoryByQuest(134021100)
    this:CancelStoryByQuest(134021105)
    this:CancelStoryByQuest(134021101)
    this:CancelStoryByQuest(134021103)
    this:CancelStoryByQuest(134021102)
    this:CancelStoryByQuest(134021104)
    this:DestroyQuestNpcActor(npcs.Npc13992.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1058.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1058.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1050.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1050.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1053.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1064.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc13197.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc15576.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc4476.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15978.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15979.alias, 3)
end

function Quest40211:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:FinishQuestID(false, 4021149)
    elseif arg1 == 2 then
        this:FinishQuestID(false, 4021150)
    elseif arg1 == 3 then
        this:FinishQuestID(false, 4021151)
    elseif arg1 == 4 then
        this:FinishQuestID(false, 4021155)
    end
end

function Quest40211:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40211:OnSubStart4021101(arg1)
    print("OnSubStart4021101")
    this:CreateQuestNpc(arg1, npcs.Npc13992.id, 0, false, 0)
end

function Quest40211:OnSubFinish4021101(arg1)
    print("OnSubFinish4021101")
end

function Quest40211:OnSubStart4021102(arg1)
    print("OnSubStart4021102")
    actorMgr:CreateActorWithPos("Q40211Trigger_18", "Actor/Gadget/Q40211Trigger_18", 70900002, 0, points._Q40211Trigger_18Point_.pos, points._Q40211Trigger_18Point_.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1085.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1058.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1050.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1063.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc4476.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15978.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15979.id, 0, false, 0)
end

function Quest40211:OnSubFinish4021102(arg1)
    print("OnSubFinish4021102")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1058.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1050.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 3)
    this:DeployStoryByQuest(134021106)
end

function Quest40211:OnSubStart4021103(arg1)
    print("OnSubStart4021103")
    this:GetQuestNpcActor(npcs.Npc4476.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest40211:OnSubFinish4021103(arg1)
    print("OnSubFinish4021103")
    this:CancelStoryByQuest(134021106)
end

function Quest40211:OnSubStart4021104(arg1)
    print("OnSubStart4021104")
    actorMgr:CreateActorWithPos("Q40211Trigger", "Actor/Gadget/Q40211Trigger", 70900002, 0, points._Q40211TriggerPoint_.pos, points._Q40211TriggerPoint_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021104(arg1)
    print("OnSubFinish4021104")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
end

function Quest40211:OnSubFailed4021104(arg1)
    print("OnSubFailed4021104")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:ActorDestroy("Q40211Trigger")
end

function Quest40211:OnSubStart4021135(arg1)
    print("OnSubStart4021135")
    actorMgr:CreateActorWithPos("Q40211Trigger_30", "Actor/Gadget/Q40211Trigger_30", 70900002, 0, points._Q40211Trigger_30Point_.pos, points._Q40211Trigger_30Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021135(arg1)
    print("OnSubFinish4021135")
    this:ActorDestroy("Q40211Trigger_30")
end

function Quest40211:OnSubFailed4021135(arg1)
    print("OnSubFailed4021135")
    this:ActorDestroy("Q40211Trigger_30")
end

function Quest40211:OnSubStart4021160(arg1)
    print("OnSubStart4021160")
    actorMgr:CreateActorWithPos("Q40211Trigger_13", "Actor/Gadget/Q40211Trigger_13", 70900002, 0, points._Q40211Trigger_13Point_.pos, points._Q40211Trigger_13Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021160(arg1)
    print("OnSubFinish4021160")
    this:QuestNarratorTask(datas.NarratorWithId_4021111, nil)
end

function Quest40211:OnSubFailed4021160(arg1)
    print("OnSubFailed4021160")
    this:ActorDestroy("Q40211Trigger_13")
end

function Quest40211:OnSubStart4021136(arg1)
    print("OnSubStart4021136")
end

function Quest40211:OnSubFinish4021136(arg1)
    print("OnSubFinish4021136")
end

function Quest40211:OnSubFailed4021136(arg1)
    print("OnSubFailed4021136")
    this:ClearNarratorTask()
end

function Quest40211:OnSubStart4021105(arg1)
    print("OnSubStart4021105")
    actorMgr:CreateActorWithPos("Q40211Trigger_1", "Actor/Gadget/Q40211Trigger_1", 70900002, 0, points._Q40211Trigger_1Point_.pos, points._Q40211Trigger_1Point_.rot, true, false, 20282)
    this:CreateLocalGadget(70330427, "1", {x = 344.823, y = 88.674, z = 871.828}, {x = 4.506, y = 131.263, z = 315.112}, 20282, nil, nil, false, 0, true)
    this:CreateLocalGadget(70330429, "1", {x = 344.383, y = 87.902, z = 873.384}, {x = 0, y = 0, z = 13.363}, 20282, nil, nil, false, 0, true)
    this:CreateLocalGadget(70330428, "1", {x = 343.401, y = 89.723, z = 871.891}, {x = 358.56, y = 26.382, z = 240.727}, 20282, nil, nil, false, 0, true)
    this:CreateLocalGadget(70330427, "2", {x = 345.026, y = 87.507, z = 857.089}, {x = 302.904, y = 0, z = 0}, 20282, nil, nil, false, 0, true)
    this:CreateLocalGadget(70330428, "2", {x = 344.783, y = 88.347, z = 856.865}, {x = 356.009, y = 0, z = 0}, 20282, nil, nil, false, 0, true)
end

function Quest40211:OnSubFinish4021105(arg1)
    print("OnSubFinish4021105")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:RemoveLocalGadget(70330427, "1")
    this:RemoveLocalGadget(70330429, "1")
    this:RemoveLocalGadget(70330428, "1")
    this:RemoveLocalGadget(70330427, "2")
    this:RemoveLocalGadget(70330428, "2")
end

function Quest40211:OnSubFailed4021105(arg1)
    print("OnSubFailed4021105")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:RemoveLocalGadget(70330427, "1")
    this:RemoveLocalGadget(70330429, "1")
    this:RemoveLocalGadget(70330428, "1")
    this:RemoveLocalGadget(70330427, "2")
    this:RemoveLocalGadget(70330428, "2")
    this:ActorDestroy("Q40211Trigger_1")
end

function Quest40211:OnSubStart4021106(arg1)
    print("OnSubStart4021106")
    this:DeployStoryByQuest(134021100)
end

function Quest40211:OnSubFinish4021106(arg1)
    print("OnSubFinish4021106")
end

function Quest40211:OnSubFailed4021106(arg1)
    print("OnSubFailed4021106")
    this:CancelStoryByQuest(134021100)
end

function Quest40211:OnSubStart4021107(arg1)
    print("OnSubStart4021107")
    this:CallDelayByQuest("1", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q40211Trigger_12", "Actor/Gadget/Q40211Trigger_12", 70900002, 0, points._Q40211Trigger_12Point_.pos, points._Q40211Trigger_12Point_.rot, true, false, 20282)
    end)
end

function Quest40211:OnSubFinish4021107(arg1)
    print("OnSubFinish4021107")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:UnCallDelayByQuest("1")
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest40211:OnSubFailed4021107(arg1)
    print("OnSubFailed4021107")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:UnCallDelayByQuest("1")
    this:ActorDestroy("Q40211Trigger_12")
    this:CancelStoryByQuest(134021100)
end

function Quest40211:OnSubStart4021137(arg1)
    print("OnSubStart4021137")
end

function Quest40211:OnSubFinish4021137(arg1)
    print("OnSubFinish4021137")
end

function Quest40211:OnSubStart4021108(arg1)
    print("OnSubStart4021108")
    actorMgr:CreateActorWithPos("Q40211Trigger_2", "Actor/Gadget/Q40211Trigger_2", 70900002, 0, points._Q40211Trigger_2Point_.pos, points._Q40211Trigger_2Point_.rot, true, false, 20282)
    actorMgr:CreateActorWithPos("Q40211Trigger_14", "Actor/Gadget/Q40211Trigger_14", 70900002, 0, points._Q40211Trigger_14Point_.pos, points._Q40211Trigger_14Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021108(arg1)
    print("OnSubFinish4021108")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest40211:OnSubFailed4021108(arg1)
    print("OnSubFailed4021108")
    this:ActorDestroy("Q40211Trigger_2")
    this:ActorDestroy("Q40211Trigger_14")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:ClearNarratorTask()
end

function Quest40211:OnSubStart4021143(arg1)
    print("OnSubStart4021143")
    actorMgr:CreateActorWithPos("Q40211Trigger_21", "Actor/Gadget/Q40211Trigger_21", 70900002, 0, points._Q40211Trigger_21Point_.pos, points._Q40211Trigger_21Point_.rot, true, false, 20282)
    this:CreateLocalGadget(70711671, "1", {x = -2025.28, y = 153.9, z = 5811.503}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15978.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15979.alias, 40211):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc4476.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest40211:OnSubFinish4021143(arg1)
    print("OnSubFinish4021143")
    this:RemoveLocalGadget(70711671, "1")
end

function Quest40211:OnSubStart4021138(arg1)
    print("OnSubStart4021138")
end

function Quest40211:OnSubFinish4021138(arg1)
    print("OnSubFinish4021138")
    this:QuestNarratorTask(datas.NarratorWithId_4021102, nil)
end

function Quest40211:OnSubStart4021142(arg1)
    print("OnSubStart4021142")
    actorMgr:CreateActorWithPos("Q40211Trigger_20", "Actor/Gadget/Q40211Trigger_20", 70900002, 0, points._Q40211Trigger_20Point_.pos, points._Q40211Trigger_20Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021142(arg1)
    print("OnSubFinish4021142")
end

function Quest40211:OnSubFailed4021142(arg1)
    print("OnSubFailed4021142")
    this:ActorDestroy("Q40211Trigger_20")
    this:ClearNarratorTask()
end

function Quest40211:OnSubStart4021109(arg1)
    print("OnSubStart4021109")
    actorMgr:CreateActorWithPos("Q40211Trigger_3", "Actor/Gadget/Q40211Trigger_3", 70900002, 0, points._Q40211Trigger_3Point_.pos, points._Q40211Trigger_3Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021109(arg1)
    print("OnSubFinish4021109")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest40211:OnSubFailed4021109(arg1)
    print("OnSubFailed4021109")
    this:ActorDestroy("Q40211Trigger_3")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
end

function Quest40211:OnSubStart4021149(arg1)
    print("OnSubStart4021149")
end

function Quest40211:OnSubFinish4021149(arg1)
    print("OnSubFinish4021149")
end

function Quest40211:OnSubStart4021110(arg1)
    print("OnSubStart4021110")
end

function Quest40211:OnSubFinish4021110(arg1)
    print("OnSubFinish4021110")
end

function Quest40211:OnSubStart4021147(arg1)
    print("OnSubStart4021147")
end

function Quest40211:OnSubFinish4021147(arg1)
    print("OnSubFinish4021147")
end

function Quest40211:OnSubStart4021148(arg1)
    print("OnSubStart4021148")
end

function Quest40211:OnSubFinish4021148(arg1)
    print("OnSubFinish4021148")
end

function Quest40211:OnSubStart4021130(arg1)
    print("OnSubStart4021130")
    this:CallDelayByQuest("2", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q40211Trigger_16", "Actor/Gadget/Q40211Trigger_16", 70900002, 0, points._Q40211Trigger_16Point_.pos, points._Q40211Trigger_16Point_.rot, true, false, 20282)
    end)
end

function Quest40211:OnSubFinish4021130(arg1)
    print("OnSubFinish4021130")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:UnCallDelayByQuest("2")
end

function Quest40211:OnSubFailed4021130(arg1)
    print("OnSubFailed4021130")
    this:UnCallDelayByQuest("2")
    this:ActorDestroy("Q40211Trigger_16")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
end

function Quest40211:OnSubStart4021131(arg1)
    print("OnSubStart4021131")
    this:DeployStoryByQuest(134021101)
end

function Quest40211:OnSubFinish4021131(arg1)
    print("OnSubFinish4021131")
end

function Quest40211:OnSubFailed4021131(arg1)
    print("OnSubFailed4021131")
    this:CancelStoryByQuest(134021101)
end

function Quest40211:OnSubStart4021132(arg1)
    print("OnSubStart4021132")
    actorMgr:CreateActorWithPos("Q40211Trigger_17", "Actor/Gadget/Q40211Trigger_17", 70900002, 0, points._Q40211Trigger_17Point_.pos, points._Q40211Trigger_17Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021132(arg1)
    print("OnSubFinish4021132")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
end

function Quest40211:OnSubFailed4021132(arg1)
    print("OnSubFailed4021132")
    this:ActorDestroy("Q40211Trigger_17")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
    this:CancelStoryByQuest(134021101)
end

function Quest40211:OnSubStart4021150(arg1)
    print("OnSubStart4021150")
end

function Quest40211:OnSubFinish4021150(arg1)
    print("OnSubFinish4021150")
end

function Quest40211:OnSubStart4021111(arg1)
    print("OnSubStart4021111")
end

function Quest40211:OnSubFinish4021111(arg1)
    print("OnSubFinish4021111")
end

function Quest40211:OnSubStart4021158(arg1)
    print("OnSubStart4021158")
end

function Quest40211:OnSubFinish4021158(arg1)
    print("OnSubFinish4021158")
end

function Quest40211:OnSubStart4021112(arg1)
    print("OnSubStart4021112")
    actorMgr:CreateActorWithPos("Q40211Trigger_4", "Actor/Gadget/Q40211Trigger_4", 70900002, 0, points._Q40211Trigger_4Point_.pos, points._Q40211Trigger_4Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021112(arg1)
    print("OnSubFinish4021112")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
end

function Quest40211:OnSubFailed4021112(arg1)
    print("OnSubFailed4021112")
    this:ActorDestroy("Q40211Trigger_4")
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 20282)
end

function Quest40211:OnSubStart4021113(arg1)
    print("OnSubStart4021113")
end

function Quest40211:OnSubFinish4021113(arg1)
    print("OnSubFinish4021113")
end

function Quest40211:OnSubStart4021144(arg1)
    print("OnSubStart4021144")
    actorMgr:CreateActorWithPos("Q40211Trigger_27", "Actor/Gadget/Q40211Trigger_27", 70900002, 0, points._Q40211Trigger_27Point_.pos, points._Q40211Trigger_27Point_.rot, true, false, 20282)
    actorMgr:CreateActorWithPos("Q40211Trigger_22", "Actor/Gadget/Q40211Trigger_22", 70900002, 0, points._Q40211Trigger_22Point_.pos, points._Q40211Trigger_22Point_.rot, true, false, 20282)
    this:CreateLocalGadget(70711671, "2", {x = -2025.28, y = 153.9, z = 5811.503}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15978.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15979.alias, 40211):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc4476.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest40211:OnSubFinish4021144(arg1)
    print("OnSubFinish4021144")
    this:RemoveLocalGadget(70711671, "2")
    this:ActorDestroy("Q40211Trigger_27")
    this:SetQuestVarByMainId(1, 1)
end

function Quest40211:OnSubStart4021115(arg1)
    print("OnSubStart4021115")
    this:DeployStoryByQuest(134021105)
end

function Quest40211:OnSubFinish4021115(arg1)
    print("OnSubFinish4021115")
end

function Quest40211:OnSubFailed4021115(arg1)
    print("OnSubFailed4021115")
    this:CancelStoryByQuest(134021105)
end

function Quest40211:OnSubStart4021116(arg1)
    print("OnSubStart4021116")
    actorMgr:CreateActorWithPos("Q40211Trigger_6", "Actor/Gadget/Q40211Trigger_6", 70900002, 0, points._Q40211Trigger_6Point_.pos, points._Q40211Trigger_6Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021116(arg1)
    print("OnSubFinish4021116")
    this:DestroyQuestNpcActor(npcs.Npc1053.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1064.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc13197.alias, 20282)
end

function Quest40211:OnSubFailed4021116(arg1)
    print("OnSubFailed4021116")
    this:ActorDestroy("Q40211Trigger_6")
    this:DestroyQuestNpcActor(npcs.Npc1053.alias, 20282)
    this:CancelStoryByQuest(134021105)
    this:DestroyQuestNpcActor(npcs.Npc1064.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc13197.alias, 20282)
end

function Quest40211:OnSubStart4021151(arg1)
    print("OnSubStart4021151")
end

function Quest40211:OnSubFinish4021151(arg1)
    print("OnSubFinish4021151")
end

function Quest40211:OnSubStart4021117(arg1)
    print("OnSubStart4021117")
end

function Quest40211:OnSubFinish4021117(arg1)
    print("OnSubFinish4021117")
end

function Quest40211:OnSubStart4021152(arg1)
    print("OnSubStart4021152")
    this:DeployStoryByQuest(134021102)
end

function Quest40211:OnSubFinish4021152(arg1)
    print("OnSubFinish4021152")
end

function Quest40211:OnSubFailed4021152(arg1)
    print("OnSubFailed4021152")
    this:CancelStoryByQuest(134021102)
end

function Quest40211:OnSubStart4021153(arg1)
    print("OnSubStart4021153")
    this:DeployStoryByQuest(134021104)
end

function Quest40211:OnSubFinish4021153(arg1)
    print("OnSubFinish4021153")
end

function Quest40211:OnSubFailed4021153(arg1)
    print("OnSubFailed4021153")
    this:CancelStoryByQuest(134021104)
end

function Quest40211:OnSubStart4021154(arg1)
    print("OnSubStart4021154")
    if this:GetSubQuestState(4021152) == 3 then
        if this:GetSubQuestState(4021153) == 3 then
            this:CreateQuestNpc(arg1, npcs.Npc1064.id, 0, false, 0)
            this:CreateQuestNpc(arg1, npcs.Npc13197.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1064.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, false)
        end
    else
        if this:GetSubQuestState(4021153) == 3 then
            if this:GetSubQuestState(4021152) == 2 then
                this:CreateQuestNpc(arg1, npcs.Npc13197.id, 0, false, 0)
            end
        else
            if this:GetSubQuestState(4021152) == 3 then
                if this:GetSubQuestState(4021153) == 2 then
                    this:CreateQuestNpc(arg1, npcs.Npc1064.id, 0, false, 0)
                    this:GetQuestNpcActor(npcs.Npc1064.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, false)
                end
            end
        end
    end
end

function Quest40211:OnSubFinish4021154(arg1)
    print("OnSubFinish4021154")
end

function Quest40211:OnSubFailed4021154(arg1)
    print("OnSubFailed4021154")
    this:DestroyQuestNpcActor(npcs.Npc1064.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc13197.alias, 20282)
    this:CancelStoryByQuest(134021102)
    this:CancelStoryByQuest(134021104)
end

function Quest40211:OnSubStart4021118(arg1)
    print("OnSubStart4021118")
    this:CallDelayByQuest("4", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q40211Trigger_7", "Actor/Gadget/Q40211Trigger_7", 70900002, 0, points._Q40211Trigger_7Point_.pos, points._Q40211Trigger_7Point_.rot, true, false, 20282)
    end)
end

function Quest40211:OnSubFinish4021118(arg1)
    print("OnSubFinish4021118")
    this:UnCallDelayByQuest("4")
    this:DestroyQuestNpcActor(npcs.Npc1064.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc13197.alias, 20282)
end

function Quest40211:OnSubFailed4021118(arg1)
    print("OnSubFailed4021118")
    this:UnCallDelayByQuest("4")
    this:ActorDestroy("Q40211Trigger_7")
    this:DestroyQuestNpcActor(npcs.Npc1053.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1064.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc13197.alias, 20282)
    this:CancelStoryByQuest(134021102)
    this:CancelStoryByQuest(134021104)
end

function Quest40211:OnSubStart4021119(arg1)
    print("OnSubStart4021119")
    this:CreateQuestNpc(arg1, npcs.Npc1053.id, 0, false, 0)
    this:CreateLocalGadget(70291004, "1", {x = 181.499, y = 81.631, z = 793.168}, {x = 0, y = 180, z = 0}, 20282, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 40211):SitOnChair(8066, false)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 40211):DisableInteeHeadCtrl(true)
end

function Quest40211:OnSubFinish4021119(arg1)
    print("OnSubFinish4021119")
end

function Quest40211:OnSubFailed4021119(arg1)
    print("OnSubFailed4021119")
    this:DestroyQuestNpcActor(npcs.Npc1053.alias, 20282)
    this:RemoveLocalGadget(70291004, "1")
end

function Quest40211:OnSubStart4021114(arg1)
    print("OnSubStart4021114")
    this:CreateLocalGadget(70291004, "1", {x = 181.499, y = 81.631, z = 793.168}, {x = 0, y = 180, z = 0}, 20282, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 40211):SitOnChair(8066, false)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 40211):DisableInteeHeadCtrl(true)
end

function Quest40211:OnSubFinish4021114(arg1)
    print("OnSubFinish4021114")
end

function Quest40211:OnSubFailed4021114(arg1)
    print("OnSubFailed4021114")
    this:RemoveLocalGadget(70291004, "1")
end

function Quest40211:OnSubStart4021120(arg1)
    print("OnSubStart4021120")
    actorMgr:CreateActorWithPos("Q40211Trigger_25", "Actor/Gadget/Q40211Trigger_25", 70900002, 0, points._Q40211Trigger_25Point_.pos, points._Q40211Trigger_25Point_.rot, true, false, 20282)
    this:CreateLocalGadget(70291004, "1", {x = 181.499, y = 81.631, z = 793.168}, {x = 0, y = 180, z = 0}, 20282, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 40211):SitOnChair(8066, false)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 40211):DisableInteeHeadCtrl(true)
end

function Quest40211:OnSubFinish4021120(arg1)
    print("OnSubFinish4021120")
    this:DestroyQuestNpcActor(npcs.Npc1053.alias, 20282)
    this:RemoveLocalGadget(70291004, "1")
end

function Quest40211:OnSubFailed4021120(arg1)
    print("OnSubFailed4021120")
    this:DestroyQuestNpcActor(npcs.Npc1053.alias, 20282)
    this:RemoveLocalGadget(70291004, "1")
    this:ActorDestroy("Q40211Trigger_25")
end

function Quest40211:OnSubStart4021156(arg1)
    print("OnSubStart4021156")
    actorMgr:CreateActorWithPos("Q40211Trigger_29", "Actor/Gadget/Q40211Trigger_29", 70900002, 0, points._Q40211Trigger_29Point_.pos, points._Q40211Trigger_29Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021156(arg1)
    print("OnSubFinish4021156")
    this:ActorDestroy("Q40211Trigger_29")
end

function Quest40211:OnSubFailed4021156(arg1)
    print("OnSubFailed4021156")
    this:ActorDestroy("Q40211Trigger_29")
end

function Quest40211:OnSubStart4021121(arg1)
    print("OnSubStart4021121")
    this:CreateQuestNpc(arg1, npcs.Npc13197.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q40211Trigger_8", "Actor/Gadget/Q40211Trigger_8", 70900002, 0, points._Q40211Trigger_8Point_.pos, points._Q40211Trigger_8Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021121(arg1)
    print("OnSubFinish4021121")
    this:DestroyQuestNpcActor(npcs.Npc13197.alias, 20282)
end

function Quest40211:OnSubFailed4021121(arg1)
    print("OnSubFailed4021121")
    this:DestroyQuestNpcActor(npcs.Npc13197.alias, 20282)
    this:ActorDestroy("Q40211Trigger_8")
end

function Quest40211:OnSubStart4021155(arg1)
    print("OnSubStart4021155")
end

function Quest40211:OnSubFinish4021155(arg1)
    print("OnSubFinish4021155")
end

function Quest40211:OnSubStart4021145(arg1)
    print("OnSubStart4021145")
    actorMgr:CreateActorWithPos("Q40211Trigger_23", "Actor/Gadget/Q40211Trigger_23", 70900002, 0, points._Q40211Trigger_23Point_.pos, points._Q40211Trigger_23Point_.rot, true, false, 20282)
    actorMgr:CreateActorWithPos("Q40211Trigger_28", "Actor/Gadget/Q40211Trigger_28", 70900002, 0, points._Q40211Trigger_28Point_.pos, points._Q40211Trigger_28Point_.rot, true, false, 20282)
    this:CreateLocalGadget(70711671, "3", {x = -2025.28, y = 153.9, z = 5811.503}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15978.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15979.alias, 40211):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc4476.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest40211:OnSubFinish4021145(arg1)
    print("OnSubFinish4021145")
    this:RemoveLocalGadget(70711671, "3")
    this:ActorDestroy("Q40211Trigger_28")
    this:SetQuestVarByMainId(2, 1)
end

function Quest40211:OnSubStart4021122(arg1)
    print("OnSubStart4021122")
    actorMgr:CreateActorWithPos("Q40211Trigger_9", "Actor/Gadget/Q40211Trigger_9", 70900002, 0, points._Q40211Trigger_9Point_.pos, points._Q40211Trigger_9Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021122(arg1)
    print("OnSubFinish4021122")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
end

function Quest40211:OnSubFailed4021122(arg1)
    print("OnSubFailed4021122")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
    this:ActorDestroy("Q40211Trigger_9")
end

function Quest40211:OnSubStart4021157(arg1)
    print("OnSubStart4021157")
end

function Quest40211:OnSubFinish4021157(arg1)
    print("OnSubFinish4021157")
end

function Quest40211:OnSubStart4021123(arg1)
    print("OnSubStart4021123")
    actorMgr:CreateActorWithPos("Q40211Trigger_10", "Actor/Gadget/Q40211Trigger_10", 70900002, 0, points._Q40211Trigger_10Point_.pos, points._Q40211Trigger_10Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021123(arg1)
    print("OnSubFinish4021123")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
end

function Quest40211:OnSubFailed4021123(arg1)
    print("OnSubFailed4021123")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
    this:ActorDestroy("Q40211Trigger_10")
end

function Quest40211:OnSubStart4021124(arg1)
    print("OnSubStart4021124")
end

function Quest40211:OnSubFinish4021124(arg1)
    print("OnSubFinish4021124")
end

function Quest40211:OnSubStart4021139(arg1)
    print("OnSubStart4021139")
end

function Quest40211:OnSubFinish4021139(arg1)
    print("OnSubFinish4021139")
end

function Quest40211:OnSubStart4021140(arg1)
    print("OnSubStart4021140")
end

function Quest40211:OnSubFinish4021140(arg1)
    print("OnSubFinish4021140")
end

function Quest40211:OnSubStart4021141(arg1)
    print("OnSubStart4021141")
end

function Quest40211:OnSubFinish4021141(arg1)
    print("OnSubFinish4021141")
end

function Quest40211:OnSubStart4021133(arg1)
    print("OnSubStart4021133")
    this:CallDelayByQuest("5", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q40211Trigger_19", "Actor/Gadget/Q40211Trigger_19", 70900002, 0, points._Q40211Trigger_19Point_.pos, points._Q40211Trigger_19Point_.rot, true, false, 20282)
    end)
end

function Quest40211:OnSubFinish4021133(arg1)
    print("OnSubFinish4021133")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 3)
    this:UnCallDelayByQuest("5")
end

function Quest40211:OnSubFailed4021133(arg1)
    print("OnSubFailed4021133")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
    this:ActorDestroy("Q40211Trigger_19")
    this:UnCallDelayByQuest("5")
end

function Quest40211:OnSubStart4021134(arg1)
    print("OnSubStart4021134")
end

function Quest40211:OnSubFinish4021134(arg1)
    print("OnSubFinish4021134")
end

function Quest40211:OnSubStart4021125(arg1)
    print("OnSubStart4021125")
    actorMgr:CreateActorWithPos("Q40211Trigger_11", "Actor/Gadget/Q40211Trigger_11", 70900002, 0, points._Q40211Trigger_11Point_.pos, points._Q40211Trigger_11Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021125(arg1)
    print("OnSubFinish4021125")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
end

function Quest40211:OnSubFailed4021125(arg1)
    print("OnSubFailed4021125")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
    this:ActorDestroy("Q40211Trigger_11")
end

function Quest40211:OnSubStart4021126(arg1)
    print("OnSubStart4021126")
    this:CreateQuestNpc(arg1, npcs.Npc1053.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1064.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13197.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest40211:OnSubFinish4021126(arg1)
    print("OnSubFinish4021126")
    this:DestroyQuestNpcActor(npcs.Npc1053.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1064.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc13197.alias, 20282)
end

function Quest40211:OnSubFailed4021126(arg1)
    print("OnSubFailed4021126")
    this:DestroyQuestNpcActor(npcs.Npc1053.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc1064.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc13197.alias, 20282)
end

function Quest40211:OnSubStart4021159(arg1)
    print("OnSubStart4021159")
    actorMgr:CreateActorWithPos("Q40211Trigger_5", "Actor/Gadget/Q40211Trigger_5", 70900002, 0, points._Q40211Trigger_5Point_.pos, points._Q40211Trigger_5Point_.rot, true, false, 20282)
    this:CreateLocalGadget(70711671, "4", {x = -2025.28, y = 153.9, z = 5811.503}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc15978.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15979.alias, 40211):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc4476.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest40211:OnSubFinish4021159(arg1)
    print("OnSubFinish4021159")
    this:RemoveLocalGadget(70711671, "4")
end

function Quest40211:OnSubStart4021146(arg1)
    print("OnSubStart4021146")
    this:DeployStoryByQuest(134021103)
end

function Quest40211:OnSubFinish4021146(arg1)
    print("OnSubFinish4021146")
end

function Quest40211:OnSubFailed4021146(arg1)
    print("OnSubFailed4021146")
    this:CancelStoryByQuest(134021103)
end

function Quest40211:OnSubStart4021127(arg1)
    print("OnSubStart4021127")
    actorMgr:CreateActorWithPos("Q40211Trigger_24", "Actor/Gadget/Q40211Trigger_24", 70900002, 0, points._Q40211Trigger_24Point_.pos, points._Q40211Trigger_24Point_.rot, true, false, 20282)
end

function Quest40211:OnSubFinish4021127(arg1)
    print("OnSubFinish4021127")
    this:CancelStoryByQuest(134021103)
    this:DestroyQuestNpcActor(npcs.Npc15576.alias, 20282)
end

function Quest40211:OnSubFailed4021127(arg1)
    print("OnSubFailed4021127")
    this:DestroyQuestNpcActor(npcs.Npc15576.alias, 20282)
    this:ActorDestroy("Q40211Trigger_24")
    this:CancelStoryByQuest(134021103)
end

function Quest40211:OnSubStart4021128(arg1)
    print("OnSubStart4021128")
end

function Quest40211:OnSubFinish4021128(arg1)
    print("OnSubFinish4021128")
    this:DestroyQuestNpcActor(npcs.Npc13992.alias, 3)
end

function Quest40211:OnSubStart4021129(arg1)
    print("OnSubStart4021129")
    this:CreateQuestNpc(arg1, npcs.Npc13992.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15978.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15979.alias, 40211):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc4476.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q40211Trigger_15", "Actor/Gadget/Q40211Trigger_15", 70900002, 0, points._Q40211Trigger_15Point_.pos, points._Q40211Trigger_15Point_.rot, true, false, 3)
end

function Quest40211:OnSubFinish4021129(arg1)
    print("OnSubFinish4021129")
    this:DestroyQuestNpcActor(npcs.Npc13992.alias, 3)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc4476.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList_1)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc15978.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList_1)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc15979.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList_1)
    this:GetQuestNpcActor(npcs.Npc15978.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15979.alias, 40211):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc4476.alias, 40211):DoFreeStyle(1120, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q40211Trigger_26", "Actor/Gadget/Q40211Trigger_26", 70900002, 0, points._Q40211Trigger_26Point_.pos, points._Q40211Trigger_26Point_.rot, true, false, 3)
end

return Quest40211
