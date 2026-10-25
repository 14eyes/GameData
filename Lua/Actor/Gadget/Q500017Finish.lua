require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500017Finish = class("Q500017Finish", GadgetActorProxy)
Q500017Finish.defaultAlias = "Q500017Finish"
local Q5000ClientConfig = require("Quest/Client/Q5000ClientConfig")

local this
local subIDs = Q5000ClientConfig.SubIDs
local datas = Q5000ClientConfig.Datas
local npcs = Q5000ClientConfig.Npcs
local points = Q5000ClientConfig.Points

function Q500017Finish:OnPostDataPrepare()
    print("Q500017Finish - OnPostDataPrepare")
    this = self
end

function Q500017Finish:OnPostComponentPrepare()
    print("Q500017Finish - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5000)
end

function Q500017Finish:TriggerIn()
    print("Q500017Finish - TriggerIn")
    actorUtils.FinishQuestID(false, 500017)
    this:DestroySelf()
end

function Q500017Finish:PreTriggerIn()
    print("Q500017Finish - PreTriggerIn")
end

function Q500017Finish:LightUpTriggerIn()
    print("Q500017Finish - LightUpTriggerIn")
end

function Q500017Finish:TriggerOut()
    print("Q500017Finish - TriggerOut")
end

return Q500017Finish
