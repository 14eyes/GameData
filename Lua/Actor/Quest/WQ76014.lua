require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76014 = class("Quest76014", QuestActorProxy)
Quest76014.defaultAlias = "Quest76014"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76014:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7601401"] = self.OnSubStart7601401,
        ["7601402"] = self.OnSubStart7601402,
        ["7601403"] = self.OnSubStart7601403,
        ["7601404"] = self.OnSubStart7601404,
        ["7601405"] = self.OnSubStart7601405,
        ["7601406"] = self.OnSubStart7601406,
        ["7601407"] = self.OnSubStart7601407,
        ["7601408"] = self.OnSubStart7601408,
        ["7601409"] = self.OnSubStart7601409,
        ["7601417"] = self.OnSubStart7601417,
        ["7601410"] = self.OnSubStart7601410,
        ["7601411"] = self.OnSubStart7601411,
        ["7601412"] = self.OnSubStart7601412,
        ["7601413"] = self.OnSubStart7601413,
        ["7601414"] = self.OnSubStart7601414,
        ["7601416"] = self.OnSubStart7601416,
        ["7601415"] = self.OnSubStart7601415
    }
end

function Quest76014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7601401"] = self.OnSubFinish7601401,
        ["7601402"] = self.OnSubFinish7601402,
        ["7601403"] = self.OnSubFinish7601403,
        ["7601404"] = self.OnSubFinish7601404,
        ["7601405"] = self.OnSubFinish7601405,
        ["7601406"] = self.OnSubFinish7601406,
        ["7601407"] = self.OnSubFinish7601407,
        ["7601408"] = self.OnSubFinish7601408,
        ["7601409"] = self.OnSubFinish7601409,
        ["7601417"] = self.OnSubFinish7601417,
        ["7601410"] = self.OnSubFinish7601410,
        ["7601411"] = self.OnSubFinish7601411,
        ["7601412"] = self.OnSubFinish7601412,
        ["7601413"] = self.OnSubFinish7601413,
        ["7601414"] = self.OnSubFinish7601414,
        ["7601416"] = self.OnSubFinish7601416,
        ["7601415"] = self.OnSubFinish7601415
    }
end

function Quest76014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76014:Start()
    print("Start")
end

function Quest76014:OnDestroy()
    print("OnDestroy")
end

function Quest76014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76014:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76014:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
    end

    actorUtils.FinishQuestID(false, 7601417)
end

function Quest76014:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76014:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76014:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76014:OnSubStart7601401(arg1)
    print("OnSubStart7601401")
    this:CreateQuestNpc(arg1, npcs.Npc22143.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22144.id, 0, false, 0)
end

function Quest76014:OnSubFinish7601401(arg1)
    print("OnSubFinish7601401")
end

function Quest76014:OnSubStart7601402(arg1)
    print("OnSubStart7601402")
    this:NpcCreateWithNpcTrigger(npcs.Npc21903.id, 0, 90, 7601402)
end

function Quest76014:OnSubFinish7601402(arg1)
    print("OnSubFinish7601402")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21903.alias)
    this:SetNavigationByMainId(76014, true)
end

function Quest76014:OnSubStart7601403(arg1)
    print("OnSubStart7601403")
end

function Quest76014:OnSubFinish7601403(arg1)
    print("OnSubFinish7601403")
end

function Quest76014:OnSubStart7601404(arg1)
    print("OnSubStart7601404")
end

function Quest76014:OnSubFinish7601404(arg1)
    print("OnSubFinish7601404")
end

function Quest76014:OnSubStart7601405(arg1)
    print("OnSubStart7601405")
end

function Quest76014:OnSubFinish7601405(arg1)
    print("OnSubFinish7601405")
end

function Quest76014:OnSubStart7601406(arg1)
    print("OnSubStart7601406")
end

function Quest76014:OnSubFinish7601406(arg1)
    print("OnSubFinish7601406")
end

function Quest76014:OnSubStart7601407(arg1)
    print("OnSubStart7601407")
end

function Quest76014:OnSubFinish7601407(arg1)
    print("OnSubFinish7601407")
end

function Quest76014:OnSubStart7601408(arg1)
    print("OnSubStart7601408")
end

function Quest76014:OnSubFinish7601408(arg1)
    print("OnSubFinish7601408")
end

function Quest76014:OnSubStart7601409(arg1)
    print("OnSubStart7601409")
end

function Quest76014:OnSubFinish7601409(arg1)
    print("OnSubFinish7601409")
end

function Quest76014:OnSubStart7601417(arg1)
    print("OnSubStart7601417")
end

function Quest76014:OnSubFinish7601417(arg1)
    print("OnSubFinish7601417")
end

function Quest76014:OnSubStart7601410(arg1)
    print("OnSubStart7601410")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601410, 0, 10, 0, npcs.Npc21903.id)
end

function Quest76014:OnSubFinish7601410(arg1)
    print("OnSubFinish7601410")
    this:SafeDestroyQuestNpc(npcs.Npc21903.alias, 3)
end

function Quest76014:OnSubStart7601411(arg1)
    print("OnSubStart7601411")
end

function Quest76014:OnSubFinish7601411(arg1)
    print("OnSubFinish7601411")
    this:SafeDestroyQuestNpc(npcs.Npc22143.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22144.alias, 3)
end

function Quest76014:OnSubStart7601412(arg1)
    print("OnSubStart7601412")
end

function Quest76014:OnSubFinish7601412(arg1)
    print("OnSubFinish7601412")
end

function Quest76014:OnSubStart7601413(arg1)
    print("OnSubStart7601413")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7601413, 0, 10, 0, npcs.Npc21903.id)
end

function Quest76014:OnSubFinish7601413(arg1)
    print("OnSubFinish7601413")
end

function Quest76014:OnSubStart7601414(arg1)
    print("OnSubStart7601414")
end

function Quest76014:OnSubFinish7601414(arg1)
    print("OnSubFinish7601414")
end

function Quest76014:OnSubStart7601416(arg1)
    print("OnSubStart7601416")
    this:PlayCutsceneIndex(7601414, function(arg1)
        actorUtils.FinishQuestID(false, 7601416)
    end, nil, nil, false)
end

function Quest76014:OnSubFinish7601416(arg1)
    print("OnSubFinish7601416")
end

function Quest76014:OnSubStart7601415(arg1)
    print("OnSubStart7601415")
    this:NpcCreateWithNpcTrigger(npcs.Npc21903.id, 0, 10, 7601415)
end

function Quest76014:OnSubFinish7601415(arg1)
    print("OnSubFinish7601415")
    this:SafeDestroyQuestNpc(npcs.Npc21903.alias, 3)
end

return Quest76014
