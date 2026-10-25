require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606802_Fail = class("Q7606802_Fail", GadgetActorProxy)
Q7606802_Fail.defaultAlias = "Q7606802_Fail"
local Q76068ClientConfig = require("Quest/Client/Q76068ClientConfig")

local this
local subIDs = Q76068ClientConfig.SubIDs
local npcs = Q76068ClientConfig.Npcs
local points = Q76068ClientConfig.Points

function Q7606802_Fail:OnPostDataPrepare()
    print("Q7606802_Fail - OnPostDataPrepare")
    this = self
end

function Q7606802_Fail:OnPostComponentPrepare()
    print("Q7606802_Fail - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76068)
end

function Q7606802_Fail:TriggerIn()
    print("Q7606802_Fail - TriggerIn")
end

function Q7606802_Fail:PreTriggerIn()
    print("Q7606802_Fail - PreTriggerIn")
end

function Q7606802_Fail:LightUpTriggerIn()
    print("Q7606802_Fail - LightUpTriggerIn")
end

function Q7606802_Fail:TriggerOut()
    print("Q7606802_Fail - TriggerOut")
    actorUtils.FinishQuestWithParam({false}, {7606802})
    this:DestroySelf()
end

return Q7606802_Fail
