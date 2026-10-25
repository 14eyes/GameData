require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302205Finish = class("Q1302205Finish", GadgetActorProxy)
Q1302205Finish.defaultAlias = "Q1302205Finish"
local Q13022ClientConfig = require("Quest/Client/Q13022ClientConfig")

local this
local subIDs = Q13022ClientConfig.SubIDs
local npcs = Q13022ClientConfig.Npcs

function Q1302205Finish:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302205Finish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1302205Finish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1302205)
    this:DestroySelf()
end

function Q1302205Finish:TriggerOut()
    print("TriggerOut")
end

return Q1302205Finish
