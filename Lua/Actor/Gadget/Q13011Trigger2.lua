require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13011Trigger2 = class("Q13011Trigger2", GadgetActorProxy)
Q13011Trigger2.defaultAlias = "Q13011Trigger2"
local Q13011ClientConfig = require("Quest/Client/Q13011ClientConfig")

local subIDs = Q13011ClientConfig.SubIDs
local npcs = Q13011ClientConfig.Npcs
local datas = Q13011ClientConfig.Datas

function Q13011Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13011Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13011Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13011"):RequestInteraction(npcs.Npc12772Data.alias)
    self:DestroySelf()
end

function Q13011Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q13011Trigger2
