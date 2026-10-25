require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76069 = class("Quest76069", QuestActorProxy)
Quest76069.defaultAlias = "Quest76069"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76069:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76069:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7606901"] = self.OnSubStart7606901,
        ["7606902"] = self.OnSubStart7606902,
        ["7606903"] = self.OnSubStart7606903,
        ["7606905"] = self.OnSubStart7606905,
        ["7606904"] = self.OnSubStart7606904
    }
end

function Quest76069:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7606901"] = self.OnSubFinish7606901,
        ["7606902"] = self.OnSubFinish7606902,
        ["7606903"] = self.OnSubFinish7606903,
        ["7606905"] = self.OnSubFinish7606905,
        ["7606904"] = self.OnSubFinish7606904
    }
end

function Quest76069:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7606903"] = self.OnSubFailed7606903, ["7606904"] = self.OnSubFailed7606904}
end

function Quest76069:Start()
    print("Start")
end

function Quest76069:OnDestroy()
    print("OnDestroy")
end

function Quest76069:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76069:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76069:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76069:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76069:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7606901 then
        actorUtils.FinishQuestID(false, 7606901)
        this:PlayerEnterDungeonWithDataAndSceneID(20337, 1961, 1013, 7606901, 1, datas.TransmitData, nil, nil)
    end
end

function Quest76069:PlayerEnterDungeonWithDataAndSceneID(currSceneID, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if currSceneID ~= sceneData.currSceneID then
        this:PlayerEnterDungeonWithData(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    end
end

function Quest76069:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76069:OnSubStart7606901(arg1)
    print("OnSubStart7606901")
end

function Quest76069:OnSubFinish7606901(arg1)
    print("OnSubFinish7606901")
end

function Quest76069:OnSubStart7606902(arg1)
    print("OnSubStart7606902")
end

function Quest76069:OnSubFinish7606902(arg1)
    print("OnSubFinish7606902")
    this:SetNavigationByMainId(76069, true)
end

function Quest76069:OnSubStart7606903(arg1)
    print("OnSubStart7606903")
end

function Quest76069:OnSubFinish7606903(arg1)
    print("OnSubFinish7606903")
end

function Quest76069:OnSubFailed7606903(arg1)
    print("OnSubFailed7606903")
    this:RecycleAllRes()
end

function Quest76069:OnSubStart7606905(arg1)
    print("OnSubStart7606905")
end

function Quest76069:OnSubFinish7606905(arg1)
    print("OnSubFinish7606905")
end

function Quest76069:OnSubStart7606904(arg1)
    print("OnSubStart7606904")
    this:CallDelayByQuest("subKey", 6, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7606904, 0, 60, 0, npcs.Npc16279.id)
    end)
end

function Quest76069:OnSubFinish7606904(arg1)
    print("OnSubFinish7606904")
    this:SafeDestroyQuestNpc(npcs.Npc16279.alias, 20337)
end

function Quest76069:OnSubFailed7606904(arg1)
    print("OnSubFailed7606904")
    this:RecycleAllRes()
end

return Quest76069
