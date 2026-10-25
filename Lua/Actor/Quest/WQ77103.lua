require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77103 = class("Quest77103", QuestActorProxy)
Quest77103.defaultAlias = "Quest77103"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77103:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77103:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7710301"] = self.OnSubStart7710301,
        ["7710302"] = self.OnSubStart7710302,
        ["7710303"] = self.OnSubStart7710303,
        ["7710304"] = self.OnSubStart7710304,
        ["7710318"] = self.OnSubStart7710318,
        ["7710306"] = self.OnSubStart7710306,
        ["7710307"] = self.OnSubStart7710307,
        ["7710323"] = self.OnSubStart7710323,
        ["7710324"] = self.OnSubStart7710324,
        ["7710319"] = self.OnSubStart7710319,
        ["7710320"] = self.OnSubStart7710320,
        ["7710321"] = self.OnSubStart7710321,
        ["7710308"] = self.OnSubStart7710308,
        ["7710312"] = self.OnSubStart7710312,
        ["7710313"] = self.OnSubStart7710313,
        ["7710314"] = self.OnSubStart7710314,
        ["7710315"] = self.OnSubStart7710315,
        ["7710316"] = self.OnSubStart7710316
    }
end

function Quest77103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7710301"] = self.OnSubFinish7710301,
        ["7710302"] = self.OnSubFinish7710302,
        ["7710303"] = self.OnSubFinish7710303,
        ["7710304"] = self.OnSubFinish7710304,
        ["7710318"] = self.OnSubFinish7710318,
        ["7710306"] = self.OnSubFinish7710306,
        ["7710307"] = self.OnSubFinish7710307,
        ["7710323"] = self.OnSubFinish7710323,
        ["7710324"] = self.OnSubFinish7710324,
        ["7710319"] = self.OnSubFinish7710319,
        ["7710320"] = self.OnSubFinish7710320,
        ["7710321"] = self.OnSubFinish7710321,
        ["7710308"] = self.OnSubFinish7710308,
        ["7710312"] = self.OnSubFinish7710312,
        ["7710313"] = self.OnSubFinish7710313,
        ["7710314"] = self.OnSubFinish7710314,
        ["7710315"] = self.OnSubFinish7710315,
        ["7710316"] = self.OnSubFinish7710316
    }
end

function Quest77103:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77103:Start()
    print("Start")
end

function Quest77103:OnDestroy()
    print("OnDestroy")
end

function Quest77103:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77103:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77103:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7710301N12404Trigger")
    this:ActorDestroy("Q7710317Trigger", 0)
    this:ActorDestroy("Q7710316Trigger", 0)
    this:ActorDestroy("Q7710314Trigger", 0)
    this:ActorDestroy("Q7710309Trigger", 0)
    this:ActorDestroy("Q7710312Trigger", 0)
    this:ActorDestroy("Q7710306Trigger", 0)
    this:ActorDestroy("Q7710304Trigger", 0)
    this:ActorDestroy("Q7710304Trigger", 0)
    this:ActorDestroy("Q7710302Trigger", 0)
    this:ActorDestroy("Q7710302Trigger", 0)
    this:ActorDestroy("Q7710301Trigger", 0)
    this:ActorDestroy("Q7710305Trigger", 0)
    this:ActorDestroy("Q7710303Trigger", 0)
    this:ActorDestroy("Q7710303Trigger", 0)
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
    this:RecycleAllRes()
end

function Quest77103:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7710316Trigger", 0)
    this:ActorDestroy("Q7710314Trigger", 0)
    this:ActorDestroy("Q7710312Trigger", 0)
    this:ActorDestroy("Q7710306Trigger", 0)
    this:ActorDestroy("Q7710304Trigger", 0)
    this:ActorDestroy("Q7710304Trigger", 0)
    this:ActorDestroy("Q7710302Trigger", 0)
    this:ActorDestroy("Q7710302Trigger", 0)
    this:ActorDestroy("Q7710301Trigger", 0)
    this:ActorDestroy("Q7710303Trigger", 0)
    this:ActorDestroy("Q7710303Trigger", 0)
end

function Quest77103:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77103:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77103:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77103:OnSubStart7710301(arg1)
    print("OnSubStart7710301")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710301, 0, 15, 0, npcs.Npc12404.id)
    actorMgr:CreateActorWithPos("Q7710301Trigger", "Actor/Gadget/Q7710301Trigger", 70900002, 0, points._Q7710301TriggerPoint_.pos, points._Q7710301TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77103:OnSubFinish7710301(arg1)
    print("OnSubFinish7710301")
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22414.alias, 3)
end

function Quest77103:OnSubStart7710302(arg1)
    print("OnSubStart7710302")
    actorMgr:CreateActorWithPos("Q7710302Trigger", "Actor/Gadget/Q7710302Trigger", 70900002, 0, points._Q7710302TriggerPoint_.pos, points._Q7710302TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7710302Trigger", "Actor/Gadget/Q7710302Trigger", 70900002, 0, points._Q7710302TriggerPoint_.pos, points._Q7710302TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77103:OnSubFinish7710302(arg1)
    print("OnSubFinish7710302")
end

function Quest77103:OnSubStart7710303(arg1)
    print("OnSubStart7710303")
    actorMgr:CreateActorWithPos("Q7710303Trigger", "Actor/Gadget/Q7710303Trigger", 70900002, 0, points._Q7710303TriggerPoint_.pos, points._Q7710303TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7710303Trigger", "Actor/Gadget/Q7710303Trigger", 70900002, 0, points._Q7710303TriggerPoint_.pos, points._Q7710303TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77103:OnSubFinish7710303(arg1)
    print("OnSubFinish7710303")
end

function Quest77103:OnSubStart7710304(arg1)
    print("OnSubStart7710304")
    actorMgr:CreateActorWithPos("Q7710304Trigger", "Actor/Gadget/Q7710304Trigger", 70900002, 0, points._Q7710304TriggerPoint_.pos, points._Q7710304TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7710304Trigger", "Actor/Gadget/Q7710304Trigger", 70900002, 0, points._Q7710304TriggerPoint_.pos, points._Q7710304TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77103:OnSubFinish7710304(arg1)
    print("OnSubFinish7710304")
end

function Quest77103:OnSubStart7710318(arg1)
    print("OnSubStart7710318")
    this:CreateQuestNpc(arg1, npcs.Npc22560.id, 0, false, 0)
end

function Quest77103:OnSubFinish7710318(arg1)
    print("OnSubFinish7710318")
end

function Quest77103:OnSubStart7710306(arg1)
    print("OnSubStart7710306")
    actorMgr:CreateActorWithPos("Q7710306Trigger", "Actor/Gadget/Q7710306Trigger", 70900002, 0, points._Q7710306TriggerPoint_.pos, points._Q7710306TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77103:OnSubFinish7710306(arg1)
    print("OnSubFinish7710306")
end

function Quest77103:OnSubStart7710307(arg1)
    print("OnSubStart7710307")
    this:CreateQuestNpc(arg1, npcs.Npc22519.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22560.id, 0, false, 0)
end

function Quest77103:OnSubFinish7710307(arg1)
    print("OnSubFinish7710307")
    this:SafeDestroyQuestNpc(npcs.Npc22519.alias, 3)
end

function Quest77103:OnSubStart7710323(arg1)
    print("OnSubStart7710323")
end

function Quest77103:OnSubFinish7710323(arg1)
    print("OnSubFinish7710323")
end

function Quest77103:OnSubStart7710324(arg1)
    print("OnSubStart7710324")
    this:NpcCreateWithNpcTrigger(npcs.Npc12404.id, 0, 15, 7710324)
end

function Quest77103:OnSubFinish7710324(arg1)
    print("OnSubFinish7710324")
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
end

function Quest77103:OnSubStart7710319(arg1)
    print("OnSubStart7710319")
end

function Quest77103:OnSubFinish7710319(arg1)
    print("OnSubFinish7710319")
end

function Quest77103:OnSubStart7710320(arg1)
    print("OnSubStart7710320")
end

function Quest77103:OnSubFinish7710320(arg1)
    print("OnSubFinish7710320")
end

function Quest77103:OnSubStart7710321(arg1)
    print("OnSubStart7710321")
end

function Quest77103:OnSubFinish7710321(arg1)
    print("OnSubFinish7710321")
end

function Quest77103:OnSubStart7710308(arg1)
    print("OnSubStart7710308")
end

function Quest77103:OnSubFinish7710308(arg1)
    print("OnSubFinish7710308")
end

function Quest77103:OnSubStart7710312(arg1)
    print("OnSubStart7710312")
    actorMgr:CreateActorWithPos("Q7710312Trigger", "Actor/Gadget/Q7710312Trigger", 70900002, 0, points._Q7710312TriggerPoint_.pos, points._Q7710312TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77103:OnSubFinish7710312(arg1)
    print("OnSubFinish7710312")
end

function Quest77103:OnSubStart7710313(arg1)
    print("OnSubStart7710313")
end

function Quest77103:OnSubFinish7710313(arg1)
    print("OnSubFinish7710313")
    this:SafeDestroyQuestNpc(npcs.Npc22560.alias, 3)
end

function Quest77103:OnSubStart7710314(arg1)
    print("OnSubStart7710314")
    actorMgr:CreateActorWithPos("Q7710314Trigger", "Actor/Gadget/Q7710314Trigger", 70900002, 0, points._Q7710314TriggerPoint_.pos, points._Q7710314TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77103:OnSubFinish7710314(arg1)
    print("OnSubFinish7710314")
end

function Quest77103:OnSubStart7710315(arg1)
    print("OnSubStart7710315")
end

function Quest77103:OnSubFinish7710315(arg1)
    print("OnSubFinish7710315")
end

function Quest77103:OnSubStart7710316(arg1)
    print("OnSubStart7710316")
    actorMgr:CreateActorWithPos("Q7710316Trigger", "Actor/Gadget/Q7710316Trigger", 70900002, 0, points._Q7710316TriggerPoint_.pos, points._Q7710316TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77103:OnSubFinish7710316(arg1)
    print("OnSubFinish7710316")
    this:SetNavigationByMainId(77110, true)
end

return Quest77103
