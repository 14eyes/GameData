require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600616trigger = class("Q600616trigger", GadgetActorProxy)
Q600616trigger.defaultAlias = "Q600616trigger"
local Q6005ClientConfig = require("Quest/Client/Q6005ClientConfig")

local this
local subIDs = Q6005ClientConfig.SubIDs
local datas = Q6005ClientConfig.Datas
local npcs = Q6005ClientConfig.Npcs
local points = Q6005ClientConfig.Points

function Q600616trigger:OnPostDataPrepare()
    print("Q600616trigger - OnPostDataPrepare")
    this = self
end

function Q600616trigger:OnPostComponentPrepare()
    print("Q600616trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6005)
end

function Q600616trigger:TriggerIn()
    print("Q600616trigger - TriggerIn")
    actorMgr:GetActor("6005"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 600516)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q600616trigger:PreTriggerIn()
    print("Q600616trigger - PreTriggerIn")
end

function Q600616trigger:LightUpTriggerIn()
    print("Q600616trigger - LightUpTriggerIn")
end

function Q600616trigger:TriggerOut()
    print("Q600616trigger - TriggerOut")
end

return Q600616trigger
