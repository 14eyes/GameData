require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302201Finish = class("Q1302201Finish", GadgetActorProxy)
Q1302201Finish.defaultAlias = "Q1302201Finish"
local Q13022ClientConfig = require("Quest/Client/Q13022ClientConfig")

local this
local subIDs = Q13022ClientConfig.SubIDs
local npcs = Q13022ClientConfig.Npcs

function Q1302201Finish:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302201Finish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1302201Finish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1302201)
    this:DestroySelf()
end

function Q1302201Finish:TriggerOut()
    print("TriggerOut")
end

return Q1302201Finish
