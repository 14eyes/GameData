require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75189 = class("Quest75189", QuestActorProxy)
Quest75189.defaultAlias = "Quest75189"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75189:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75189:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7518902"] = self.OnSubStart7518902,
        ["7518901"] = self.OnSubStart7518901,
        ["7518906"] = self.OnSubStart7518906,
        ["7518911"] = self.OnSubStart7518911,
        ["7518907"] = self.OnSubStart7518907,
        ["7518908"] = self.OnSubStart7518908,
        ["7518909"] = self.OnSubStart7518909,
        ["7518910"] = self.OnSubStart7518910,
        ["7518903"] = self.OnSubStart7518903,
        ["7518905"] = self.OnSubStart7518905,
        ["7518904"] = self.OnSubStart7518904,
        ["7518912"] = self.OnSubStart7518912,
        ["7518913"] = self.OnSubStart7518913
    }
end

function Quest75189:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7518902"] = self.OnSubFinish7518902,
        ["7518901"] = self.OnSubFinish7518901,
        ["7518906"] = self.OnSubFinish7518906,
        ["7518911"] = self.OnSubFinish7518911,
        ["7518907"] = self.OnSubFinish7518907,
        ["7518908"] = self.OnSubFinish7518908,
        ["7518909"] = self.OnSubFinish7518909,
        ["7518910"] = self.OnSubFinish7518910,
        ["7518903"] = self.OnSubFinish7518903,
        ["7518905"] = self.OnSubFinish7518905,
        ["7518904"] = self.OnSubFinish7518904,
        ["7518912"] = self.OnSubFinish7518912,
        ["7518913"] = self.OnSubFinish7518913
    }
end

function Quest75189:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75189:Start()
    print("Start")
end

function Quest75189:OnDestroy()
    print("OnDestroy")
end

function Quest75189:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75189:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75189:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75189:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75189:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7518901")
        actorUtils.FinishQuestID(false, 7518901)
    end

    if arg1 == 2 then
        print("FinishSubQuest7518904")
        actorUtils.FinishQuestID(false, 7518904)
    end

    if arg1 == 3 then
        print("FinishSubQuest7518912")
        actorUtils.FinishQuestID(false, 7518912)
    end
end

function Quest75189:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75189:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75189:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75189:OnSubStart7518902(arg1)
    print("OnSubStart7518902")
    this:NpcCreateWithNpcTrigger(npcs.Npc21805.id, 0, 20, 7518902)
end

function Quest75189:OnSubFinish7518902(arg1)
    print("OnSubFinish7518902")
    this:SafeDestroyQuestNpc(npcs.Npc21805.alias, 101)
    this:SafeDestroyQuestNpc(npcs.Npc21805.alias, 101)
    this:SetNavigationByMainId(75189, true)
end

function Quest75189:OnSubStart7518901(arg1)
    print("OnSubStart7518901")
end

function Quest75189:OnSubFinish7518901(arg1)
    print("OnSubFinish7518901")
end

function Quest75189:OnSubStart7518906(arg1)
    print("OnSubStart7518906")
end

function Quest75189:OnSubFinish7518906(arg1)
    print("OnSubFinish7518906")
end

function Quest75189:OnSubStart7518911(arg1)
    print("OnSubStart7518911")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7518911, 0, 80, 0, npcs.Npc21805.id)
end

function Quest75189:OnSubFinish7518911(arg1)
    print("OnSubFinish7518911")
    this:SafeDestroyQuestNpc(npcs.Npc21805.alias, 101)
end

function Quest75189:OnSubStart7518907(arg1)
    print("OnSubStart7518907")
end

function Quest75189:OnSubFinish7518907(arg1)
    print("OnSubFinish7518907")
end

function Quest75189:OnSubStart7518908(arg1)
    print("OnSubStart7518908")
end

function Quest75189:OnSubFinish7518908(arg1)
    print("OnSubFinish7518908")
    this:SetNavigationByMainId(75189, true)
end

function Quest75189:OnSubStart7518909(arg1)
    print("OnSubStart7518909")
end

function Quest75189:OnSubFinish7518909(arg1)
    print("OnSubFinish7518909")
end

function Quest75189:OnSubStart7518910(arg1)
    print("OnSubStart7518910")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc21805.id, 0, 7518910, 80, true)
end

function Quest75189:OnSubFinish7518910(arg1)
    print("OnSubFinish7518910")
    this:SafeDestroyQuestNpc(npcs.Npc21805.alias, 101)
end

function Quest75189:OnSubStart7518903(arg1)
    print("OnSubStart7518903")
end

function Quest75189:OnSubFinish7518903(arg1)
    print("OnSubFinish7518903")
end

function Quest75189:OnSubStart7518905(arg1)
    print("OnSubStart7518905")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7518905, 0, 90, 0, npcs.Npc21806.id)
end

function Quest75189:OnSubFinish7518905(arg1)
    print("OnSubFinish7518905")
    this:SafeDestroyQuestNpc(npcs.Npc21806.alias, 101)
end

function Quest75189:OnSubStart7518904(arg1)
    print("OnSubStart7518904")
end

function Quest75189:OnSubFinish7518904(arg1)
    print("OnSubFinish7518904")
end

function Quest75189:OnSubStart7518912(arg1)
    print("OnSubStart7518912")
end

function Quest75189:OnSubFinish7518912(arg1)
    print("OnSubFinish7518912")
end

function Quest75189:OnSubStart7518913(arg1)
    print("OnSubStart7518913")
    actorUtils.FinishQuestID(false, 7518913)
end

function Quest75189:OnSubFinish7518913(arg1)
    print("OnSubFinish7518913")
end

return Quest75189
