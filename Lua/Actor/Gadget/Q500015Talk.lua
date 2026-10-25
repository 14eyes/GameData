require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500015Talk = class("Q500015Talk", GadgetActorProxy)
Q500015Talk.defaultAlias = "Q500015Talk"
local Q5000ClientConfig = require("Quest/Client/Q5000ClientConfig")

local this
local subIDs = Q5000ClientConfig.SubIDs
local datas = Q5000ClientConfig.Datas
local npcs = Q5000ClientConfig.Npcs
local points = Q5000ClientConfig.Points

function Q500015Talk:OnPostDataPrepare()
    print("Q500015Talk - OnPostDataPrepare")
    this = self
end

function Q500015Talk:OnPostComponentPrepare()
    print("Q500015Talk - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5000)
end

function Q500015Talk:TriggerIn()
    print("Q500015Talk - TriggerIn")
end

function Q500015Talk:PreTriggerIn()
    print("Q500015Talk - PreTriggerIn")
end

function Q500015Talk:LightUpTriggerIn()
    print("Q500015Talk - LightUpTriggerIn")
    actorMgr:GetActor("5000"):RequestInteraction(npcs.Npc1086.alias, "", true)
    this:DestroySelf()
end

function Q500015Talk:TriggerOut()
    print("Q500015Talk - TriggerOut")
end

return Q500015Talk
