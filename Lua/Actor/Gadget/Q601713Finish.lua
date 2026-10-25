require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601713Finish = class("Q601713Finish", GadgetActorProxy)
Q601713Finish.defaultAlias = "Q601713Finish"
local Q6017ClientConfig = require("Quest/Client/Q6017ClientConfig")

local this
local subIDs = Q6017ClientConfig.SubIDs
local datas = Q6017ClientConfig.Datas
local npcs = Q6017ClientConfig.Npcs
local points = Q6017ClientConfig.Points

function Q601713Finish:OnPostDataPrepare()
    print("Q601713Finish - OnPostDataPrepare")
    this = self
end

function Q601713Finish:OnPostComponentPrepare()
    print("Q601713Finish - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6017)
end

function Q601713Finish:TriggerIn()
    print("Q601713Finish - TriggerIn")
    actorUtils.FinishQuestID(false, 601713)
    this:DestroySelf()
end

function Q601713Finish:PreTriggerIn()
    print("Q601713Finish - PreTriggerIn")
end

function Q601713Finish:LightUpTriggerIn()
    print("Q601713Finish - LightUpTriggerIn")
end

function Q601713Finish:TriggerOut()
    print("Q601713Finish - TriggerOut")
end

return Q601713Finish
