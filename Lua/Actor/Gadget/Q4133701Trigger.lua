require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4133701Trigger = class("Q4133701Trigger", GadgetActorProxy)
Q4133701Trigger.defaultAlias = "Q4133701Trigger"
local Q41337ClientConfig = require("Quest/Client/Q41337ClientConfig")

local mainID = Q41337ClientConfig.MainID
local actorAlias = Q41337ClientConfig.ActorAlias
local subIDs = Q41337ClientConfig.SubIDs
local npcs = Q41337ClientConfig.Npcs
local gadgets = Q41337ClientConfig.Gadgets
local datas = Q41337ClientConfig.Datas

function Q4133701Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4133701Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4133701Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4133701)
    self:DestroySelf()
end

function Q4133701Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4133701Trigger
