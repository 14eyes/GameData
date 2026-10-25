require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5013 = class("Quest5013", QuestActorProxy)
Quest5013.defaultAlias = "Quest5013"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5013:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["501301"] = self.OnSubStart501301,
        ["501302"] = self.OnSubStart501302,
        ["501303"] = self.OnSubStart501303,
        ["501309"] = self.OnSubStart501309,
        ["501304"] = self.OnSubStart501304,
        ["501305"] = self.OnSubStart501305,
        ["501312"] = self.OnSubStart501312,
        ["501306"] = self.OnSubStart501306,
        ["501307"] = self.OnSubStart501307,
        ["501313"] = self.OnSubStart501313,
        ["501308"] = self.OnSubStart501308,
        ["501310"] = self.OnSubStart501310,
        ["501311"] = self.OnSubStart501311
    }
end

function Quest5013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["501301"] = self.OnSubFinish501301,
        ["501302"] = self.OnSubFinish501302,
        ["501303"] = self.OnSubFinish501303,
        ["501309"] = self.OnSubFinish501309,
        ["501304"] = self.OnSubFinish501304,
        ["501305"] = self.OnSubFinish501305,
        ["501312"] = self.OnSubFinish501312,
        ["501306"] = self.OnSubFinish501306,
        ["501307"] = self.OnSubFinish501307,
        ["501313"] = self.OnSubFinish501313,
        ["501308"] = self.OnSubFinish501308,
        ["501310"] = self.OnSubFinish501310,
        ["501311"] = self.OnSubFinish501311
    }
end

function Quest5013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5013:Start()
    print("Start")
end

function Quest5013:OnDestroy()
    print("OnDestroy")
end

function Quest5013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5013:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest5013:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5013:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest5013:OnSubStart501301(arg1)
    print("OnSubStart501301")
end

function Quest5013:OnSubFinish501301(arg1)
    print("OnSubFinish501301")
    this:LevelLoadFinishSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1, nil, nil, nil)
    end)
end

function Quest5013:OnSubStart501302(arg1)
    print("OnSubStart501302")
end

function Quest5013:OnSubFinish501302(arg1)
    print("OnSubFinish501302")
end

function Quest5013:OnSubStart501303(arg1)
    print("OnSubStart501303")
end

function Quest5013:OnSubFinish501303(arg1)
    print("OnSubFinish501303")
end

function Quest5013:OnSubStart501309(arg1)
    print("OnSubStart501309")
    this:DeployStoryByQuest(110501309)
end

function Quest5013:OnSubFinish501309(arg1)
    print("OnSubFinish501309")
end

function Quest5013:OnSubStart501304(arg1)
    print("OnSubStart501304")
    this:DeployStoryByQuest(110501309)
end

function Quest5013:OnSubFinish501304(arg1)
    print("OnSubFinish501304")
    this:CancelStoryByQuest(110501309)
end

function Quest5013:OnSubStart501305(arg1)
    print("OnSubStart501305")
    if sceneData.currSceneID == 20238 then
        this:NatsaurusVehicleOff()
    end
end

function Quest5013:OnSubFinish501305(arg1)
    print("OnSubFinish501305")
end

function Quest5013:OnSubStart501312(arg1)
    print("OnSubStart501312")
    this:DeployStoryByQuest(110501306)
end

function Quest5013:OnSubFinish501312(arg1)
    print("OnSubFinish501312")
end

function Quest5013:OnSubStart501306(arg1)
    print("OnSubStart501306")
    this:DeployStoryByQuest(110501306)
end

function Quest5013:OnSubFinish501306(arg1)
    print("OnSubFinish501306")
    this:CancelStoryByQuest(110501306)
end

function Quest5013:OnSubStart501307(arg1)
    print("OnSubStart501307")
    actorMgr:CreateActorWithPos("Q501307Trigger", "Actor/Gadget/Q501307Trigger", 70900002, 0, points._Q501307TriggerPoint_.pos, points._Q501307TriggerPoint_.rot, true, false, 20238)
end

function Quest5013:OnSubFinish501307(arg1)
    print("OnSubFinish501307")
    this:ActorDestroy("Q501307Trigger")
end

function Quest5013:OnSubStart501313(arg1)
    print("OnSubStart501313")
end

function Quest5013:OnSubFinish501313(arg1)
    print("OnSubFinish501313")
end

function Quest5013:OnSubStart501308(arg1)
    print("OnSubStart501308")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(501308, 0, 50, 1, npcs.Npc1095.id)
    this:DeployStoryByQuest(110501308)
end

function Quest5013:OnSubFinish501308(arg1)
    print("OnSubFinish501308")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 20238)
    this:CancelStoryByQuest(110501308)
end

function Quest5013:OnSubStart501310(arg1)
    print("OnSubStart501310")
    if sceneData.currSceneID == 20238 then
        this:LevelLoadFinishSafeCall(function(arg1_2)
            this:TransmitPlayerByData(arg1, 1, datas.TransmitData_AbyssWar, nil, nil, nil)
        end)
    end
end

function Quest5013:OnSubFinish501310(arg1)
    print("OnSubFinish501310")
end

function Quest5013:OnSubStart501311(arg1)
    print("OnSubStart501311")
    if sceneData.currSceneID == 20238 then
        this:PlayCutsceneIndex(50131101, function(arg1)
            actorUtils.FinishQuestID(false, 501311)
            this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 50139801, false, true)
        end, nil, nil, false)
    end
end

function Quest5013:OnSubFinish501311(arg1)
    print("OnSubFinish501311")
end

return Quest5013
