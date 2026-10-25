require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610105Trigger = class("Q7610105Trigger", GadgetActorProxy)
Q7610105Trigger.defaultAlias = "Q7610105Trigger"
local Q76101ClientConfig = require("Quest/Client/Q76101ClientConfig")

local this
local subIDs = Q76101ClientConfig.SubIDs
local datas = Q76101ClientConfig.Datas
local npcs = Q76101ClientConfig.Npcs
local points = Q76101ClientConfig.Points

function Q7610105Trigger:OnPostDataPrepare()
    print("Q7610105Trigger - OnPostDataPrepare")
    this = self
end

function Q7610105Trigger:OnPostComponentPrepare()
    print("Q7610105Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76101)
end

function Q7610105Trigger:TriggerIn()
    print("Q7610105Trigger - TriggerIn")
    actorMgr:GetActor("76101"):PlayCutsceneIndex(7610105, function(arg1)
        actorUtils.FinishQuestID(false, 7610105)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q7610105Trigger:PreTriggerIn()
    print("Q7610105Trigger - PreTriggerIn")
end

function Q7610105Trigger:LightUpTriggerIn()
    print("Q7610105Trigger - LightUpTriggerIn")
end

function Q7610105Trigger:TriggerOut()
    print("Q7610105Trigger - TriggerOut")
end

return Q7610105Trigger
