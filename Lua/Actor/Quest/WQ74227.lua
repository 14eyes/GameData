require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74227 = class("Quest74227", QuestActorProxy)
Quest74227.defaultAlias = "Quest74227"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74227:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74227:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7422701"] = self.OnSubStart7422701,
        ["7422702"] = self.OnSubStart7422702,
        ["7422703"] = self.OnSubStart7422703
    }
end

function Quest74227:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7422701"] = self.OnSubFinish7422701,
        ["7422702"] = self.OnSubFinish7422702,
        ["7422703"] = self.OnSubFinish7422703
    }
end

function Quest74227:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7422701"] = self.OnSubFailed7422701,
        ["7422702"] = self.OnSubFailed7422702,
        ["7422703"] = self.OnSubFailed7422703
    }
end

function Quest74227:Start()
    print("Start")
end

function Quest74227:OnDestroy()
    print("OnDestroy")
end

function Quest74227:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74227:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74227:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74227:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 742270301 then
        actorUtils.FinishQuestID(false, 7422703)
    end
end

function Quest74227:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74227:OnSubStart7422701(arg1)
    print("OnSubStart7422701")
end

function Quest74227:OnSubFinish7422701(arg1)
    print("OnSubFinish7422701")
end

function Quest74227:OnSubFailed7422701(arg1)
    print("OnSubFailed7422701")
end

function Quest74227:OnSubStart7422702(arg1)
    print("OnSubStart7422702")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Paimon.id, 7422702, 0, 20, 1)
end

function Quest74227:OnSubFinish7422702(arg1)
    print("OnSubFinish7422702")
    this:GetQuestNpcActor(npcs.Paimon.alias, 74227):DestroyWithDisappear(false, nil)
end

function Quest74227:OnSubFailed7422702(arg1)
    print("OnSubFailed7422702")
end

function Quest74227:OnSubStart7422703(arg1)
    print("OnSubStart7422703")
end

function Quest74227:OnSubFinish7422703(arg1)
    print("OnSubFinish7422703")
end

function Quest74227:OnSubFailed7422703(arg1)
    print("OnSubFailed7422703")
end

return Quest74227
