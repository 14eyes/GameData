require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15023 = class("Quest15023", QuestActorProxy)
Quest15023.defaultAlias = "Quest15023"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest15023:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1502301"] = self.OnSubStart1502301,
        ["1502318"] = self.OnSubStart1502318,
        ["1502302"] = self.OnSubStart1502302,
        ["1502315"] = self.OnSubStart1502315,
        ["1502310"] = self.OnSubStart1502310,
        ["1502311"] = self.OnSubStart1502311,
        ["1502312"] = self.OnSubStart1502312,
        ["1502303"] = self.OnSubStart1502303,
        ["1502313"] = self.OnSubStart1502313,
        ["1502319"] = self.OnSubStart1502319,
        ["1502326"] = self.OnSubStart1502326,
        ["1502320"] = self.OnSubStart1502320,
        ["1502314"] = self.OnSubStart1502314,
        ["1502308"] = self.OnSubStart1502308,
        ["1502304"] = self.OnSubStart1502304,
        ["1502327"] = self.OnSubStart1502327,
        ["1502321"] = self.OnSubStart1502321,
        ["1502322"] = self.OnSubStart1502322,
        ["1502323"] = self.OnSubStart1502323,
        ["1502324"] = self.OnSubStart1502324,
        ["1502325"] = self.OnSubStart1502325,
        ["1502305"] = self.OnSubStart1502305,
        ["1502317"] = self.OnSubStart1502317,
        ["1502306"] = self.OnSubStart1502306,
        ["1502316"] = self.OnSubStart1502316,
        ["1502309"] = self.OnSubStart1502309,
        ["1502307"] = self.OnSubStart1502307
    }
end

function Quest15023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1502301"] = self.OnSubFinish1502301,
        ["1502318"] = self.OnSubFinish1502318,
        ["1502302"] = self.OnSubFinish1502302,
        ["1502315"] = self.OnSubFinish1502315,
        ["1502310"] = self.OnSubFinish1502310,
        ["1502311"] = self.OnSubFinish1502311,
        ["1502312"] = self.OnSubFinish1502312,
        ["1502303"] = self.OnSubFinish1502303,
        ["1502313"] = self.OnSubFinish1502313,
        ["1502319"] = self.OnSubFinish1502319,
        ["1502326"] = self.OnSubFinish1502326,
        ["1502320"] = self.OnSubFinish1502320,
        ["1502314"] = self.OnSubFinish1502314,
        ["1502308"] = self.OnSubFinish1502308,
        ["1502304"] = self.OnSubFinish1502304,
        ["1502327"] = self.OnSubFinish1502327,
        ["1502321"] = self.OnSubFinish1502321,
        ["1502322"] = self.OnSubFinish1502322,
        ["1502323"] = self.OnSubFinish1502323,
        ["1502324"] = self.OnSubFinish1502324,
        ["1502325"] = self.OnSubFinish1502325,
        ["1502305"] = self.OnSubFinish1502305,
        ["1502317"] = self.OnSubFinish1502317,
        ["1502306"] = self.OnSubFinish1502306,
        ["1502316"] = self.OnSubFinish1502316,
        ["1502309"] = self.OnSubFinish1502309,
        ["1502307"] = self.OnSubFinish1502307
    }
end

function Quest15023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15023:Start()
    print("Start")
end

function Quest15023:OnDestroy()
    print("OnDestroy")
end

function Quest15023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15023:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 1502318)
    end
end

function Quest15023:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest15023:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15023:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest15023:DungeonRewind()
    self:DestroyQuestNpcActor(npcs.Npc1092.alias, 20240)
    self:DestroyQuestNpcActor(npcs.Npc15049.alias, 20240)
    self:ActorDestroy("Q15023DungeonTarget01")
    self:ActorDestroy("Q15023DungeonTarget02")
    self:ActorDestroy("Q15023DungeonTarget03")
    self:ActorDestroy("Q15023DungeonTarget04")
    self:ActorDestroy("Q15023DungeonTarget05")
    self:ActorDestroy("Q15023DungeonTarget06")
    self:ActorDestroy("Q15023DungeonTarget07")
    self:ActorDestroy("Q15023DungeonTarget08")
    self:ActorDestroy("Q15023DungeonTarget09")
    self:ActorDestroy("Q15023DungeonTarget10")
    self:ActorDestroy("Q15023DungeonShortCut1")
    self:ActorDestroy("Q15023DungeonShortCut2")
    self:DestroyNpcTrigger("Q1502302N1092Trigger")
    self:DestroyNpcTrigger("Q1502303N1092Trigger")
    self:DestroyNpcTrigger("Q1502306N1092Trigger")
    self:DestroyNpcTrigger("Q1502309N1092Trigger")
    self:DestroyNpcTrigger("Q1502325N1092Trigger")
    self:DestroyNpcTrigger("Q1502316Trigger")
    self:UnCallDelayByQuest("Q1502303")
    self:UnCallDelayByQuest("Q1502306")
    self:UnCallDelayByQuest("Q1502317")
    self:RemoveLocalGadget(71700379, "1")
end

function Quest15023:OnSubStart1502301(arg1)
    print("OnSubStart1502301")
    this:DungeonRewind()
end

function Quest15023:OnSubFinish1502301(arg1)
    print("OnSubFinish1502301")
end

function Quest15023:OnSubStart1502318(arg1)
    print("OnSubStart1502318")
end

function Quest15023:OnSubFinish1502318(arg1)
    print("OnSubFinish1502318")
end

function Quest15023:OnSubStart1502302(arg1)
    print("OnSubStart1502302")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1092.id, 0, 1502302, 30, true)
end

function Quest15023:OnSubFinish1502302(arg1)
    print("OnSubFinish1502302")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 20240)
    this:ActionSafeCall(function(arg1)
        this:SetNavigationByMainId(15023, true)
    end)
end

function Quest15023:OnSubStart1502315(arg1)
    print("OnSubStart1502315")
    actorMgr:CreateActorWithPos("Q15023DungeonTarget01", "Actor/Gadget/Q15023DungeonTarget01", 70900002, 0, points._Q15023DungeonTarget01Point_.pos, points._Q15023DungeonTarget01Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502315(arg1)
    print("OnSubFinish1502315")
end

function Quest15023:OnSubStart1502310(arg1)
    print("OnSubStart1502310")
end

function Quest15023:OnSubFinish1502310(arg1)
    print("OnSubFinish1502310")
end

function Quest15023:OnSubStart1502311(arg1)
    print("OnSubStart1502311")
    actorMgr:CreateActorWithPos("Q15023DungeonTarget02", "Actor/Gadget/Q15023DungeonTarget02", 70900002, 0, points._Q15023DungeonTarget02Point_.pos, points._Q15023DungeonTarget02Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502311(arg1)
    print("OnSubFinish1502311")
end

function Quest15023:OnSubStart1502312(arg1)
    print("OnSubStart1502312")
end

function Quest15023:OnSubFinish1502312(arg1)
    print("OnSubFinish1502312")
end

function Quest15023:OnSubStart1502303(arg1)
    print("OnSubStart1502303")
    this:CallDelayByQuest("Q1502303", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(1502303, 0, 10, 1, npcs.Npc1092.id)
    end)
end

function Quest15023:OnSubFinish1502303(arg1)
    print("OnSubFinish1502303")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 20240)
end

function Quest15023:OnSubStart1502313(arg1)
    print("OnSubStart1502313")
    actorMgr:CreateActorWithPos("Q15023DungeonShortCut1", "Actor/Gadget/Q15023DungeonShortCut1", 70900002, 0, points._Q15023DungeonShortCut1Point_.pos, points._Q15023DungeonShortCut1Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502313(arg1)
    print("OnSubFinish1502313")
end

function Quest15023:OnSubStart1502319(arg1)
    print("OnSubStart1502319")
    actorMgr:CreateActorWithPos("Q15023DungeonTarget03", "Actor/Gadget/Q15023DungeonTarget03", 70900002, 0, points._Q15023DungeonTarget03Point_.pos, points._Q15023DungeonTarget03Point_.rot, true, false, 20240)
    actorMgr:CreateActorWithPos("Q15023DungeonShortCut1", "Actor/Gadget/Q15023DungeonShortCut1", 70900002, 0, points._Q15023DungeonShortCut1Point_.pos, points._Q15023DungeonShortCut1Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502319(arg1)
    print("OnSubFinish1502319")
    this:ActorDestroy("Q15023DungeonTarget03")
end

function Quest15023:OnSubStart1502326(arg1)
    print("OnSubStart1502326")
    actorMgr:CreateActorWithPos("Q15023DungeonTarget09", "Actor/Gadget/Q15023DungeonTarget09", 70900002, 0, points._Q15023DungeonTarget09Point_.pos, points._Q15023DungeonTarget09Point_.rot, true, false, 20240)
    actorMgr:CreateActorWithPos("Q15023DungeonShortCut1", "Actor/Gadget/Q15023DungeonShortCut1", 70900002, 0, points._Q15023DungeonShortCut1Point_.pos, points._Q15023DungeonShortCut1Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502326(arg1)
    print("OnSubFinish1502326")
    this:ActorDestroy("Q15023DungeonTarget09")
end

function Quest15023:OnSubStart1502320(arg1)
    print("OnSubStart1502320")
    actorMgr:CreateActorWithPos("Q15023DungeonTarget04", "Actor/Gadget/Q15023DungeonTarget04", 70900002, 0, points._Q15023DungeonTarget04Point_.pos, points._Q15023DungeonTarget04Point_.rot, true, false, 20240)
    actorMgr:CreateActorWithPos("Q15023DungeonShortCut1", "Actor/Gadget/Q15023DungeonShortCut1", 70900002, 0, points._Q15023DungeonShortCut1Point_.pos, points._Q15023DungeonShortCut1Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502320(arg1)
    print("OnSubFinish1502320")
    this:ActorDestroy("Q15023DungeonTarget04")
    this:ActorDestroy("Q15023DungeonShortCut1")
end

function Quest15023:OnSubStart1502314(arg1)
    print("OnSubStart1502314")
end

function Quest15023:OnSubFinish1502314(arg1)
    print("OnSubFinish1502314")
end

function Quest15023:OnSubStart1502308(arg1)
    print("OnSubStart1502308")
    this:CreateQuestNpc(arg1, npcs.Npc15049.id, 0, false, 0)
    this:CreateLocalGadget(71700379, "1", {x = -243.846, y = 215.684, z = 77.638}, {x = 0, y = 0, z = 0}, 20240, nil, nil, true, 0, true)
end

function Quest15023:OnSubFinish1502308(arg1)
    print("OnSubFinish1502308")
    this:SafeDestroyQuestNpc(npcs.Npc15049.alias, 20240)
    this:RemoveLocalGadget(71700379, "1")
end

function Quest15023:OnSubStart1502304(arg1)
    print("OnSubStart1502304")
    actorMgr:CreateActorWithPos("Q15023DungeonTarget05", "Actor/Gadget/Q15023DungeonTarget05", 70900002, 0, points._Q15023DungeonTarget05Point_.pos, points._Q15023DungeonTarget05Point_.rot, true, false, 20240)
    actorMgr:CreateActorWithPos("Q15023DungeonShortCut2", "Actor/Gadget/Q15023DungeonShortCut2", 70900002, 0, points._Q15023DungeonShortCut2Point_.pos, points._Q15023DungeonShortCut2Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502304(arg1)
    print("OnSubFinish1502304")
    this:ActorDestroy("Q15023DungeonTarget05")
end

function Quest15023:OnSubStart1502327(arg1)
    print("OnSubStart1502327")
    actorMgr:CreateActorWithPos("Q15023DungeonTarget10", "Actor/Gadget/Q15023DungeonTarget10", 70900002, 0, points._Q15023DungeonTarget10Point_.pos, points._Q15023DungeonTarget10Point_.rot, true, false, 20240)
    actorMgr:CreateActorWithPos("Q15023DungeonShortCut2", "Actor/Gadget/Q15023DungeonShortCut2", 70900002, 0, points._Q15023DungeonShortCut2Point_.pos, points._Q15023DungeonShortCut2Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502327(arg1)
    print("OnSubFinish1502327")
    this:ActorDestroy("Q15023DungeonTarget10")
end

function Quest15023:OnSubStart1502321(arg1)
    print("OnSubStart1502321")
    actorMgr:CreateActorWithPos("Q15023DungeonTarget06", "Actor/Gadget/Q15023DungeonTarget06", 70900002, 0, points._Q15023DungeonTarget06Point_.pos, points._Q15023DungeonTarget06Point_.rot, true, false, 20240)
    actorMgr:CreateActorWithPos("Q15023DungeonShortCut2", "Actor/Gadget/Q15023DungeonShortCut2", 70900002, 0, points._Q15023DungeonShortCut2Point_.pos, points._Q15023DungeonShortCut2Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502321(arg1)
    print("OnSubFinish1502321")
    this:ActorDestroy("Q15023DungeonTarget06")
end

function Quest15023:OnSubStart1502322(arg1)
    print("OnSubStart1502322")
    actorMgr:CreateActorWithPos("Q15023DungeonTarget07", "Actor/Gadget/Q15023DungeonTarget07", 70900002, 0, points._Q15023DungeonTarget07Point_.pos, points._Q15023DungeonTarget07Point_.rot, true, false, 20240)
    actorMgr:CreateActorWithPos("Q15023DungeonShortCut2", "Actor/Gadget/Q15023DungeonShortCut2", 70900002, 0, points._Q15023DungeonShortCut2Point_.pos, points._Q15023DungeonShortCut2Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502322(arg1)
    print("OnSubFinish1502322")
    this:ActorDestroy("Q15023DungeonTarget07")
end

function Quest15023:OnSubStart1502323(arg1)
    print("OnSubStart1502323")
    actorMgr:CreateActorWithPos("Q15023DungeonShortCut2", "Actor/Gadget/Q15023DungeonShortCut2", 70900002, 0, points._Q15023DungeonShortCut2Point_.pos, points._Q15023DungeonShortCut2Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502323(arg1)
    print("OnSubFinish1502323")
end

function Quest15023:OnSubStart1502324(arg1)
    print("OnSubStart1502324")
    actorMgr:CreateActorWithPos("Q15023DungeonTarget08", "Actor/Gadget/Q15023DungeonTarget08", 70900002, 0, points._Q15023DungeonTarget08Point_.pos, points._Q15023DungeonTarget08Point_.rot, true, false, 20240)
    actorMgr:CreateActorWithPos("Q15023DungeonShortCut2", "Actor/Gadget/Q15023DungeonShortCut2", 70900002, 0, points._Q15023DungeonShortCut2Point_.pos, points._Q15023DungeonShortCut2Point_.rot, true, false, 20240)
end

function Quest15023:OnSubFinish1502324(arg1)
    print("OnSubFinish1502324")
    this:ActorDestroy("Q15023DungeonTarget08")
    this:ActorDestroy("Q15023DungeonShortCut2")
end

function Quest15023:OnSubStart1502325(arg1)
    print("OnSubStart1502325")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502325, 0, 20, 1, npcs.Npc1092.id)
end

function Quest15023:OnSubFinish1502325(arg1)
    print("OnSubFinish1502325")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 20240)
end

function Quest15023:OnSubStart1502305(arg1)
    print("OnSubStart1502305")
end

function Quest15023:OnSubFinish1502305(arg1)
    print("OnSubFinish1502305")
end

function Quest15023:OnSubStart1502317(arg1)
    print("OnSubStart1502317")
    this:CallDelayByQuest("Q1502317", 3, function(arg1)
        actorUtils.FinishQuestID(false, 1502317)
    end)
end

function Quest15023:OnSubFinish1502317(arg1)
    print("OnSubFinish1502317")
end

function Quest15023:OnSubStart1502306(arg1)
    print("OnSubStart1502306")
    this:CallDelayByQuest("Q1502306", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(1502306, 0, 50, 1, npcs.Npc1092.id)
    end)
end

function Quest15023:OnSubFinish1502306(arg1)
    print("OnSubFinish1502306")
end

function Quest15023:OnSubStart1502316(arg1)
    print("OnSubStart1502316")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q1502316Trigger", "Actor/Gadget/Q1502316Trigger", 70900002, 0, points._Q1502316TriggerPoint_.pos, points._Q1502316TriggerPoint_.rot, true, false, 20240)
    end)
end

function Quest15023:OnSubFinish1502316(arg1)
    print("OnSubFinish1502316")
end

function Quest15023:OnSubStart1502309(arg1)
    print("OnSubStart1502309")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1092.id, 0, 1502309, 50, true)
end

function Quest15023:OnSubFinish1502309(arg1)
    print("OnSubFinish1502309")
    this:DestroyQuestNpcActor(npcs.Npc1092.alias, 20240)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    end)
end

function Quest15023:OnSubStart1502307(arg1)
    print("OnSubStart1502307")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1092.id, 0, 1502307, 14, true)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 15023):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc6323.alias, 1, true)
    this:NotifyTo(npcs.Npc6324.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc14500.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14500.alias, 15023):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest15023:OnSubFinish1502307(arg1)
    print("OnSubFinish1502307")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14500.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc6323.alias, 0, true)
        this:LightNotifyTo(npcs.Npc6324.alias, 0, true)
    end)
end

return Quest15023
