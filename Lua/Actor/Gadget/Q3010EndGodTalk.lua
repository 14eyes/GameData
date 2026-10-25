require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3010EndGodTalk = class("Q3010EndGodTalk", GadgetActorProxy)
Q3010EndGodTalk.defaultAlias = "Q3010EndGodTalk"
local Q3010ClientConfig = require("Quest/Client/Q3010ClientConfig")

local subIDs = Q3010ClientConfig.SubIDs
local npcs = Q3010ClientConfig.Npcs
local datas = Q3010ClientConfig.Datas

function Q3010EndGodTalk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3010EndGodTalk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3010EndGodTalk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3010"):RequestInteraction(npcs.Npc1056Data.alias)
    self:DestroySelf()
end

function Q3010EndGodTalk:TriggerOut()
    print("TriggerOut")
end

return Q3010EndGodTalk
