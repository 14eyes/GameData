require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226315Trigger02 = class("Q7226315Trigger02", GadgetActorProxy)
Q7226315Trigger02.defaultAlias = "Q7226315Trigger02"
local Q72263ClientConfig = require("Quest/Client/Q72263ClientConfig")

local subIDs = Q72263ClientConfig.SubIDs
local npcs = Q72263ClientConfig.Npcs
local datas = Q72263ClientConfig.Datas

function Q7226315Trigger02:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226315Trigger02:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226315Trigger02:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72263"):FinishQuestID(false, 7226301)
    self:DestroySelf()
end

function Q7226315Trigger02:TriggerOut()
    print("TriggerOut")
end

return Q7226315Trigger02
