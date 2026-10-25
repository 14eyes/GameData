require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3029TriggerTRANS01 = class("Q3029TriggerTRANS01", GadgetActorProxy)
Q3029TriggerTRANS01.defaultAlias = "Q3029TriggerTRANS01"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q3029TriggerTRANS01:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q3029TriggerTRANS01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3029TriggerTRANS01:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302923)
    this:DestroySelf()
end

function Q3029TriggerTRANS01:TriggerOut()
    print("TriggerOut")
end

return Q3029TriggerTRANS01
