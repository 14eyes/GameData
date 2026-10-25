require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302002Finish = class("Q1302002Finish", GadgetActorProxy)
Q1302002Finish.defaultAlias = "Q1302002Finish"
local Q13020ClientConfig = require("Quest/Client/Q13020ClientConfig")

local this
local subIDs = Q13020ClientConfig.SubIDs
local npcs = Q13020ClientConfig.Npcs
local datas = Q13020ClientConfig.Datas

function Q1302002Finish:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302002Finish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1302002Finish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1302002)
    this:DestroySelf()
end

function Q1302002Finish:TriggerOut()
    print("TriggerOut")
end

return Q1302002Finish
