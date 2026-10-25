require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610028Trigger = class("Q7610028Trigger", GadgetActorProxy)
Q7610028Trigger.defaultAlias = "Q7610028Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610028Trigger:OnPostDataPrepare()
    print("Q7610028Trigger - OnPostDataPrepare")
    this = self
end

function Q7610028Trigger:OnPostComponentPrepare()
    print("Q7610028Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610028Trigger:TriggerIn()
    print("Q7610028Trigger - TriggerIn")
    actorMgr:GetActor("76100"):PlayCutsceneIndex(7610028, function(arg1)
        actorUtils.FinishQuestID(false, 7610028)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q7610028Trigger:PreTriggerIn()
    print("Q7610028Trigger - PreTriggerIn")
end

function Q7610028Trigger:LightUpTriggerIn()
    print("Q7610028Trigger - LightUpTriggerIn")
end

function Q7610028Trigger:TriggerOut()
    print("Q7610028Trigger - TriggerOut")
end

return Q7610028Trigger
