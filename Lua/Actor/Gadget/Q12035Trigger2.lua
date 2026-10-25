require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12035Trigger2 = class("Q12035Trigger2", GadgetActorProxy)
Q12035Trigger2.defaultAlias = "Q12035Trigger2"
local Q12035ClientConfig = require("Quest/Client/Q12035ClientConfig")

local subIDs = Q12035ClientConfig.SubIDs
local npcs = Q12035ClientConfig.Npcs
local datas = Q12035ClientConfig.Datas

function Q12035Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12035Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12035Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12035"):RequestInteraction(npcs.Npc3086Data.alias)
    self:DestroySelf()
end

function Q12035Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q12035Trigger2
