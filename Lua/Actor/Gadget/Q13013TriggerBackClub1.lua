require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13013TriggerBackClub1 = class("Q13013TriggerBackClub1", GadgetActorProxy)
Q13013TriggerBackClub1.defaultAlias = "Q13013TriggerBackClub1"
local Q13013ClientConfig = require("Quest/Client/Q13013ClientConfig")

local subIDs = Q13013ClientConfig.SubIDs
local npcs = Q13013ClientConfig.Npcs
local datas = Q13013ClientConfig.Datas

function Q13013TriggerBackClub1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13013TriggerBackClub1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13013TriggerBackClub1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13013"):RequestInteraction(npcs.Npc12839Data.alias)
    self:DestroySelf()
end

function Q13013TriggerBackClub1:TriggerOut()
    print("TriggerOut")
end

return Q13013TriggerBackClub1
