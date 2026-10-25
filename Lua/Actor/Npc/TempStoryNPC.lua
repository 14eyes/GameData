require("Actor/ActorCommon")
local ConfigNpcActorProxy = require("Actor/Npc/ConfigNpcActorProxy")

local TempStoryNPC = class("TempStoryNPC", ConfigNpcActorProxy)
TempStoryNPC.defaultAlias = "TempStoryNPC"
TempStoryNPC.BubblePath = nil

function TempStoryNPC:PrepareNpcDataAndStart()
    self.ID = self:GetNpcConfigId()
    local str = tostring(self.ID)
    self.BubblePath = "Actor/Npc/Config/NpcBubble/Bubble" .. str
    self.ConfigPath = "Actor/Npc/Config/NpcConfig/Config" .. str
    self.IsPreparingData = true
    actorUtils.PrepareData(self.OnPrepareNpcData, self, self.BubblePath, self.ConfigPath)
end

function TempStoryNPC:OnInitBaseConfig()
    util.begin_sample("[TempStoryNPC]tempBubbleData")
    if NG_HSOD_DEBUG then
        util.unrequire(self.BubblePath)
    end

    if NG_HSOD_DEBUG then
        util.unrequire(self.BubblePath)
    end

    local v = require(self.BubblePath)
    if v ~= false and v ~= true then
        if v.BubbleData ~= nil then
            self.bubbleData2 = v.BubbleData
            self.bubbleData = nil
        else
            self.bubbleData = v.Data
            self.bubbleData2 = nil
        end
    end

    self:TryCreateDailySpeechBubbleTask()
    util.end_sample()
end

function TempStoryNPC:OnAppear()
    self:TryCreateDailySpeechBubbleTask()
end

function TempStoryNPC:OnDisappear()
    self.speechBubbleTask = nil
end

return TempStoryNPC
