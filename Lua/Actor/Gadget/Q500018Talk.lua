require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500018Talk = class("Q500018Talk", GadgetActorProxy)
Q500018Talk.defaultAlias = "Q500018Talk"
local Q5000ClientConfig = require("Quest/Client/Q5000ClientConfig")

local this
local subIDs = Q5000ClientConfig.SubIDs
local datas = Q5000ClientConfig.Datas
local npcs = Q5000ClientConfig.Npcs
local points = Q5000ClientConfig.Points

function Q500018Talk:OnPostDataPrepare()
    print("Q500018Talk - OnPostDataPrepare")
    this = self
end

function Q500018Talk:OnPostComponentPrepare()
    print("Q500018Talk - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5000)
end

function Q500018Talk:TriggerIn()
    print("Q500018Talk - TriggerIn")
    actorMgr:GetActor("5000"):RequestInteraction(npcs.Npc1086.alias, "", true)
    this:DestroySelf()
end

function Q500018Talk:PreTriggerIn()
    print("Q500018Talk - PreTriggerIn")
end

function Q500018Talk:LightUpTriggerIn()
    print("Q500018Talk - LightUpTriggerIn")
end

function Q500018Talk:TriggerOut()
    print("Q500018Talk - TriggerOut")
end

return Q500018Talk
