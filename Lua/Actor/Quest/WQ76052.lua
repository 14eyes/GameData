require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76052 = class("Quest76052", QuestActorProxy)
Quest76052.defaultAlias = "Quest76052"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76052:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76052:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7605201"] = self.OnSubStart7605201,
        ["7605202"] = self.OnSubStart7605202,
        ["7605204"] = self.OnSubStart7605204,
        ["7605205"] = self.OnSubStart7605205,
        ["7605206"] = self.OnSubStart7605206,
        ["7605203"] = self.OnSubStart7605203
    }
end

function Quest76052:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7605201"] = self.OnSubFinish7605201,
        ["7605202"] = self.OnSubFinish7605202,
        ["7605204"] = self.OnSubFinish7605204,
        ["7605205"] = self.OnSubFinish7605205,
        ["7605206"] = self.OnSubFinish7605206,
        ["7605203"] = self.OnSubFinish7605203
    }
end

function Quest76052:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76052:Start()
    print("Start")
end

function Quest76052:OnDestroy()
    print("OnDestroy")
end

function Quest76052:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76052:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76052:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15832.alias, 3)
    this:DestroyNpcTrigger("Q7605201N1318Trigger")
    this:DestroyNpcTrigger("Q7605203N1318Trigger")
end

function Quest76052:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76052TriggerDeleteGuer")
end

function Quest76052:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76052:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76052:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76052:OnSubStart7605201(arg1)
    print("OnSubStart7605201")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 40, 7605201)
    this:GetQuestNpcActor(npcs.Npc1318.alias, 76052):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest76052:OnSubFinish7605201(arg1)
    print("OnSubFinish7605201")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2357, nil)
        this:SetNavigationByMainId(76052, true)
    end)
end

function Quest76052:OnSubStart7605202(arg1)
    print("OnSubStart7605202")
    this:CreateQuestNpc(arg1, npcs.Npc15832.id, 0, false, 0)
end

function Quest76052:OnSubFinish7605202(arg1)
    print("OnSubFinish7605202")
    this:SafeDestroyQuestNpc(npcs.Npc15832.alias, 3)
end

function Quest76052:OnSubStart7605204(arg1)
    print("OnSubStart7605204")
end

function Quest76052:OnSubFinish7605204(arg1)
    print("OnSubFinish7605204")
end

function Quest76052:OnSubStart7605205(arg1)
    print("OnSubStart7605205")
end

function Quest76052:OnSubFinish7605205(arg1)
    print("OnSubFinish7605205")
end

function Quest76052:OnSubStart7605206(arg1)
    print("OnSubStart7605206")
end

function Quest76052:OnSubFinish7605206(arg1)
    print("OnSubFinish7605206")
end

function Quest76052:OnSubStart7605203(arg1)
    print("OnSubStart7605203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7605203, 0, 20, 1, npcs.Npc1318.id)
end

function Quest76052:OnSubFinish7605203(arg1)
    print("OnSubFinish7605203")
    this:DeployRangeStoryByQuest(117605200, 3, {x = 2142.415, y = 108.533, z = 11195.16}, 30, 80)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318_1.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:GetQuestNpcActor(npcs.Npc1318_1.alias, 76052):DoFreeStyle(8010, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q76052TriggerDeleteGuer", "Actor/Gadget/Q76052TriggerDeleteGuer", 70900002, 0, points._Q76052TriggerDeleteGuerPoint_.pos, points._Q76052TriggerDeleteGuerPoint_.rot, true, false, 3)
end

return Quest76052
