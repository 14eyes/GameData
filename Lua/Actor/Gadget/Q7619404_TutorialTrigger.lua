require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7619404_TutorialTrigger = class("Q7619404_TutorialTrigger", GadgetActorProxy)
Q7619404_TutorialTrigger.defaultAlias = "Q7619404_TutorialTrigger"
local Q76194ClientConfig = require("Quest/Client/Q76194ClientConfig")

local this
local subIDs = Q76194ClientConfig.SubIDs
local datas = Q76194ClientConfig.Datas
local npcs = Q76194ClientConfig.Npcs
local points = Q76194ClientConfig.Points

function Q7619404_TutorialTrigger:OnPostDataPrepare()
    print("Q7619404_TutorialTrigger - OnPostDataPrepare")
    this = self
end

function Q7619404_TutorialTrigger:OnPostComponentPrepare()
    print("Q7619404_TutorialTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76194)
end

function Q7619404_TutorialTrigger:TriggerIn()
    print("Q7619404_TutorialTrigger - TriggerIn")
    actorMgr:GetActor("76194"):ShowTutorialDialog(2655, nil)
    this:DestroySelf()
end

function Q7619404_TutorialTrigger:PreTriggerIn()
    print("Q7619404_TutorialTrigger - PreTriggerIn")
end

function Q7619404_TutorialTrigger:LightUpTriggerIn()
    print("Q7619404_TutorialTrigger - LightUpTriggerIn")
end

function Q7619404_TutorialTrigger:TriggerOut()
    print("Q7619404_TutorialTrigger - TriggerOut")
end

return Q7619404_TutorialTrigger
