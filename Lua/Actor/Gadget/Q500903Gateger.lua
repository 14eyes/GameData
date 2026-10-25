require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500903Gateger = class("Q500903Gateger", GadgetActorProxy)
Q500903Gateger.defaultAlias = "Q500903Gateger"
local Q5009ClientConfig = require("Quest/Client/Q5009ClientConfig")

local this
local subIDs = Q5009ClientConfig.SubIDs
local datas = Q5009ClientConfig.Datas
local npcs = Q5009ClientConfig.Npcs
local points = Q5009ClientConfig.Points

function Q500903Gateger:OnPostDataPrepare()
    print("Q500903Gateger - OnPostDataPrepare")
    this = self
end

function Q500903Gateger:OnPostComponentPrepare()
    print("Q500903Gateger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "AQ5009_KinichInter", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 5009)
end

function Q500903Gateger:TriggerIn()
    print("Q500903Gateger - TriggerIn")
    actorMgr:GetActor("5009"):RequestInteraction(npcs.Npc1088.alias, "", true)
end

function Q500903Gateger:PreTriggerIn()
    print("Q500903Gateger - PreTriggerIn")
end

function Q500903Gateger:LightUpTriggerIn()
    print("Q500903Gateger - LightUpTriggerIn")
end

function Q500903Gateger:TriggerOut()
    print("Q500903Gateger - TriggerOut")
end

return Q500903Gateger
