require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302920Triggernear = class("Q302920Triggernear", GadgetActorProxy)
Q302920Triggernear.defaultAlias = "Q302920Triggernear"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302920Triggernear:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302920Triggernear:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302920Triggernear:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302920)
    this:DestroySelf()
end

function Q302920Triggernear:TriggerOut()
    print("TriggerOut")
end

return Q302920Triggernear
