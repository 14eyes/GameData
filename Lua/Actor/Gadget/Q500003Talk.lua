require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500003Talk = class("Q500003Talk", GadgetActorProxy)
Q500003Talk.defaultAlias = "Q500003Talk"
local Q5000ClientConfig = require("Quest/Client/Q5000ClientConfig")

local this
local subIDs = Q5000ClientConfig.SubIDs
local datas = Q5000ClientConfig.Datas
local npcs = Q5000ClientConfig.Npcs
local points = Q5000ClientConfig.Points

function Q500003Talk:OnPostDataPrepare()
    print("Q500003Talk - OnPostDataPrepare")
    this = self
end

function Q500003Talk:OnPostComponentPrepare()
    print("Q500003Talk - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5000)
end

function Q500003Talk:TriggerIn()
    print("Q500003Talk - TriggerIn")
    actorMgr:GetActor("5000"):RequestInteraction(npcs.Npc1086.alias, "", true)
    this:DestroySelf()
end

function Q500003Talk:PreTriggerIn()
    print("Q500003Talk - PreTriggerIn")
end

function Q500003Talk:LightUpTriggerIn()
    print("Q500003Talk - LightUpTriggerIn")
end

function Q500003Talk:TriggerOut()
    print("Q500003Talk - TriggerOut")
end

return Q500003Talk
