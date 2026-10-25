require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7619506_TutorialTrigger = class("Q7619506_TutorialTrigger", GadgetActorProxy)
Q7619506_TutorialTrigger.defaultAlias = "Q7619506_TutorialTrigger"
local Q76195ClientConfig = require("Quest/Client/Q76195ClientConfig")

local this
local subIDs = Q76195ClientConfig.SubIDs
local datas = Q76195ClientConfig.Datas
local npcs = Q76195ClientConfig.Npcs
local points = Q76195ClientConfig.Points

function Q7619506_TutorialTrigger:OnPostDataPrepare()
    print("Q7619506_TutorialTrigger - OnPostDataPrepare")
    this = self
end

function Q7619506_TutorialTrigger:OnPostComponentPrepare()
    print("Q7619506_TutorialTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76195)
end

function Q7619506_TutorialTrigger:TriggerIn()
    print("Q7619506_TutorialTrigger - TriggerIn")
    actorMgr:GetActor("76195"):CallDelayByQuest("7619506Delay", 2, function(arg1)
        actorMgr:GetActor("76195"):ShowTutorialDialog(2655, nil)
    end)

    this:DestroySelf()
end

function Q7619506_TutorialTrigger:PreTriggerIn()
    print("Q7619506_TutorialTrigger - PreTriggerIn")
end

function Q7619506_TutorialTrigger:LightUpTriggerIn()
    print("Q7619506_TutorialTrigger - LightUpTriggerIn")
end

function Q7619506_TutorialTrigger:TriggerOut()
    print("Q7619506_TutorialTrigger - TriggerOut")
end

return Q7619506_TutorialTrigger
