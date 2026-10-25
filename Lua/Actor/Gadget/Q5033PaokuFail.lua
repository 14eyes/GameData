require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5033PaokuFail = class("Q5033PaokuFail", GadgetActorProxy)
Q5033PaokuFail.defaultAlias = "Q5033PaokuFail"
local Q5033ClientConfig = require("Quest/Client/Q5033ClientConfig")

local this
local subIDs = Q5033ClientConfig.SubIDs
local datas = Q5033ClientConfig.Datas
local npcs = Q5033ClientConfig.Npcs
local points = Q5033ClientConfig.Points

function Q5033PaokuFail:OnPostDataPrepare()
    print("Q5033PaokuFail - OnPostDataPrepare")
    this = self
end

function Q5033PaokuFail:OnPostComponentPrepare()
    print("Q5033PaokuFail - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "LQ5033_MavuikaQuest", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 5033)
end

function Q5033PaokuFail:TriggerIn()
    print("Q5033PaokuFail - TriggerIn")
end

function Q5033PaokuFail:PreTriggerIn()
    print("Q5033PaokuFail - PreTriggerIn")
end

function Q5033PaokuFail:LightUpTriggerIn()
    print("Q5033PaokuFail - LightUpTriggerIn")
end

function Q5033PaokuFail:TriggerOut()
    print("Q5033PaokuFail - TriggerOut")
    actorUtils.FinishQuestID(true, 503302)
    actorUtils.FinishQuestID(true, 503322)
    actorUtils.FinishQuestID(true, 503318)
    actorUtils.FinishQuestID(true, 503323)
    this:DestroySelf()
end

return Q5033PaokuFail
