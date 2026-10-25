require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302224Finish = class("Q1302224Finish", GadgetActorProxy)
Q1302224Finish.defaultAlias = "Q1302224Finish"
local Q13022ClientConfig = require("Quest/Client/Q13022ClientConfig")

local this
local subIDs = Q13022ClientConfig.SubIDs
local npcs = Q13022ClientConfig.Npcs

function Q1302224Finish:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302224Finish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302224Finish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1302224)
    this:DestroySelf()
end

function Q1302224Finish:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302224Finish:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302224Finish:TriggerOut()
    print("TriggerOut")
end

return Q1302224Finish
