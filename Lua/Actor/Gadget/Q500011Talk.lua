require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500011Talk = class("Q500011Talk", GadgetActorProxy)
Q500011Talk.defaultAlias = "Q500011Talk"
local Q5000ClientConfig = require("Quest/Client/Q5000ClientConfig")

local this
local subIDs = Q5000ClientConfig.SubIDs
local datas = Q5000ClientConfig.Datas
local npcs = Q5000ClientConfig.Npcs
local points = Q5000ClientConfig.Points

function Q500011Talk:OnPostDataPrepare()
    print("Q500011Talk - OnPostDataPrepare")
    this = self
end

function Q500011Talk:OnPostComponentPrepare()
    print("Q500011Talk - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5000)
end

function Q500011Talk:TriggerIn()
    print("Q500011Talk - TriggerIn")
    actorMgr:GetActor("5000"):RequestInteraction(npcs.Npc14111.alias, "", true)
    this:DestroySelf()
end

function Q500011Talk:PreTriggerIn()
    print("Q500011Talk - PreTriggerIn")
end

function Q500011Talk:LightUpTriggerIn()
    print("Q500011Talk - LightUpTriggerIn")
end

function Q500011Talk:TriggerOut()
    print("Q500011Talk - TriggerOut")
end

return Q500011Talk
