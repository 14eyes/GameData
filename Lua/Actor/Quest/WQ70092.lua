require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70092 = class("Quest70092", QuestActorProxy)
Quest70092.defaultAlias = "Quest70092"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest70092:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest70092:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7009201"] = self.OnSubStart7009201,
        ["7009204"] = self.OnSubStart7009204,
        ["7009202"] = self.OnSubStart7009202,
        ["7009203"] = self.OnSubStart7009203
    }
end

function Quest70092:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7009201"] = self.OnSubFinish7009201,
        ["7009204"] = self.OnSubFinish7009204,
        ["7009202"] = self.OnSubFinish7009202,
        ["7009203"] = self.OnSubFinish7009203
    }
end

function Quest70092:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7009202"] = self.OnSubFailed7009202}
end

function Quest70092:Start()
    print("Start")
end

function Quest70092:OnDestroy()
    print("OnDestroy")
end

function Quest70092:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70092:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70092:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70092:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70092:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70092:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70092:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest70092:OnSubStart7009201(arg1)
    print("OnSubStart7009201")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7009201, 0, 10, 1, npcs.Npc1329.id)
end

function Quest70092:OnSubFinish7009201(arg1)
    print("OnSubFinish7009201")
    this:NpcDestroyImmediately(3, npcs.Npc1329.alias)
    this:PlayerEnterDungeonWithData(2049, 1324, 7009201, 1, datas.Q7009605Transmit, nil, nil)
end

function Quest70092:OnSubStart7009204(arg1)
    print("OnSubStart7009204")
end

function Quest70092:OnSubFinish7009204(arg1)
    print("OnSubFinish7009204")
end

function Quest70092:OnSubStart7009202(arg1)
    print("OnSubStart7009202")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1329.id, 0, 7009202, 30, true)
end

function Quest70092:OnSubFinish7009202(arg1)
    print("OnSubFinish7009202")
    this:NpcDestroyImmediately(20355, npcs.Npc1329.alias)
end

function Quest70092:OnSubFailed7009202(arg1)
    print("OnSubFailed7009202")
    this:RecycleAllRes()
end

function Quest70092:OnSubStart7009203(arg1)
    print("OnSubStart7009203")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1329.id, 0, 7009203, 15, true)
end

function Quest70092:OnSubFinish7009203(arg1)
    print("OnSubFinish7009203")
    this:NpcDestroyImmediately(3, npcs.Npc1329.alias)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000132)
    end)
end

return Quest70092
