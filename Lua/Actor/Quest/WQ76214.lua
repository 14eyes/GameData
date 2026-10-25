require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76214 = class("Quest76214", QuestActorProxy)
Quest76214.defaultAlias = "Quest76214"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76214:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76214:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7621401"] = self.OnSubStart7621401,
        ["7621406"] = self.OnSubStart7621406,
        ["7621405"] = self.OnSubStart7621405,
        ["7621407"] = self.OnSubStart7621407,
        ["7621402"] = self.OnSubStart7621402,
        ["7621403"] = self.OnSubStart7621403,
        ["7621404"] = self.OnSubStart7621404,
        ["7621408"] = self.OnSubStart7621408
    }
end

function Quest76214:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7621401"] = self.OnSubFinish7621401,
        ["7621406"] = self.OnSubFinish7621406,
        ["7621405"] = self.OnSubFinish7621405,
        ["7621407"] = self.OnSubFinish7621407,
        ["7621402"] = self.OnSubFinish7621402,
        ["7621403"] = self.OnSubFinish7621403,
        ["7621404"] = self.OnSubFinish7621404,
        ["7621408"] = self.OnSubFinish7621408
    }
end

function Quest76214:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7621406"] = self.OnSubFailed7621406,
        ["7621405"] = self.OnSubFailed7621405,
        ["7621407"] = self.OnSubFailed7621407,
        ["7621402"] = self.OnSubFailed7621402,
        ["7621403"] = self.OnSubFailed7621403,
        ["7621408"] = self.OnSubFailed7621408
    }
end

function Quest76214:Start()
    print("Start")
end

function Quest76214:OnDestroy()
    print("OnDestroy")
end

function Quest76214:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76214:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76214:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76214:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76214:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76214:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76214:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76214:OnSubStart7621401(arg1)
    print("OnSubStart7621401")
    this:CreateQuestNpc(arg1, npcs.Npc1851.id, 0, false, 0)
end

function Quest76214:OnSubFinish7621401(arg1)
    print("OnSubFinish7621401")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc1851.alias)
end

function Quest76214:OnSubStart7621406(arg1)
    print("OnSubStart7621406")
    this:TransmitPlayerByQuestId(7621406, 1, nil, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1851.id, 0, 7621406, 10, true)
    end, nil)
end

function Quest76214:OnSubFinish7621406(arg1)
    print("OnSubFinish7621406")
end

function Quest76214:OnSubFailed7621406(arg1)
    print("OnSubFailed7621406")
    this:RecycleAllRes()
end

function Quest76214:OnSubStart7621405(arg1)
    print("OnSubStart7621405")
end

function Quest76214:OnSubFinish7621405(arg1)
    print("OnSubFinish7621405")
    this:NpcDestroyImmediately(103, npcs.Npc1851.alias)
end

function Quest76214:OnSubFailed7621405(arg1)
    print("OnSubFailed7621405")
    this:RecycleAllRes()
end

function Quest76214:OnSubStart7621407(arg1)
    print("OnSubStart7621407")
    this:CreateQuestNpc(arg1, npcs.Npc1852.id, 0, false, 0)
end

function Quest76214:OnSubFinish7621407(arg1)
    print("OnSubFinish7621407")
end

function Quest76214:OnSubFailed7621407(arg1)
    print("OnSubFailed7621407")
    this:RecycleAllRes()
end

function Quest76214:OnSubStart7621402(arg1)
    print("OnSubStart7621402")
end

function Quest76214:OnSubFinish7621402(arg1)
    print("OnSubFinish7621402")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc1852.alias)
end

function Quest76214:OnSubFailed7621402(arg1)
    print("OnSubFailed7621402")
    this:RecycleAllRes()
end

function Quest76214:OnSubStart7621403(arg1)
    print("OnSubStart7621403")
    this:CreateQuestNpc(arg1, npcs.Npc1853.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1853.alias, 76214):DoFreeStyle(1, true, nil, true, true, false, true)
end

function Quest76214:OnSubFinish7621403(arg1)
    print("OnSubFinish7621403")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc1853.alias)
end

function Quest76214:OnSubFailed7621403(arg1)
    print("OnSubFailed7621403")
    this:RecycleAllRes()
end

function Quest76214:OnSubStart7621404(arg1)
    print("OnSubStart7621404")
    this:CreateQuestNpc(arg1, npcs.Npc1851.id, 0, false, 0)
    actorUtils.FinishQuestWithParam({false}, {7621404})
end

function Quest76214:OnSubFinish7621404(arg1)
    print("OnSubFinish7621404")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc1851.alias)
end

function Quest76214:OnSubStart7621408(arg1)
    print("OnSubStart7621408")
end

function Quest76214:OnSubFinish7621408(arg1)
    print("OnSubFinish7621408")
end

function Quest76214:OnSubFailed7621408(arg1)
    print("OnSubFailed7621408")
    this:RecycleAllRes()
end

return Quest76214
