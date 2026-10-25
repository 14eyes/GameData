require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302011Finish = class("Q1302011Finish", GadgetActorProxy)
Q1302011Finish.defaultAlias = "Q1302011Finish"
local Q13020ClientConfig = require("Quest/Client/Q13020ClientConfig")

local this
local subIDs = Q13020ClientConfig.SubIDs
local npcs = Q13020ClientConfig.Npcs
local datas = Q13020ClientConfig.Datas

function Q1302011Finish:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302011Finish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1302011Finish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1302011)
    this:DestroySelf()
end

function Q1302011Finish:TriggerOut()
    print("TriggerOut")
end

return Q1302011Finish
