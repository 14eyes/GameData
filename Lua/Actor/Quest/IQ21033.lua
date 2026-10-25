require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21033 = class("Quest21033", QuestActorProxy)
Quest21033.defaultAlias = "Quest21033"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest21033:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest21033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2103301"] = self.OnSubStart2103301,
        ["2103302"] = self.OnSubStart2103302,
        ["2103303"] = self.OnSubStart2103303,
        ["2103304"] = self.OnSubStart2103304,
        ["2103306"] = self.OnSubStart2103306,
        ["2103305"] = self.OnSubStart2103305
    }
end

function Quest21033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2103301"] = self.OnSubFinish2103301,
        ["2103302"] = self.OnSubFinish2103302,
        ["2103303"] = self.OnSubFinish2103303,
        ["2103304"] = self.OnSubFinish2103304,
        ["2103306"] = self.OnSubFinish2103306,
        ["2103305"] = self.OnSubFinish2103305
    }
end

function Quest21033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21033:Start()
    print("Start")
end

function Quest21033:OnDestroy()
    print("OnDestroy")
end

function Quest21033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest21033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21033:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:UnCallFunc(self.freestyle)
end

function Quest21033:CreateQuestNpcBesidePlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n * arg3
    avatarPos.z = avatarPos.z + v * arg3
    this:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest21033:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest21033:freestyle()
    print("freestyle")
    this:GetQuestNpcActor(npcs.Npc2016Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest21033:OnSubStart2103301(arg1)
    print("OnSubStart2103301")
    this:CreateQuestNpc(arg1, npcs.Npc2016Data.id, 1)
    this:CallDelay(1, self.freestyle)
end

function Quest21033:OnSubFinish2103301(arg1)
    print("OnSubFinish2103301")
end

function Quest21033:OnSubStart2103302(arg1)
    print("OnSubStart2103302")
end

function Quest21033:OnSubFinish2103302(arg1)
    print("OnSubFinish2103302")
end

function Quest21033:OnSubStart2103303(arg1)
    print("OnSubStart2103303")
end

function Quest21033:OnSubFinish2103303(arg1)
    print("OnSubFinish2103303")
end

function Quest21033:OnSubStart2103304(arg1)
    print("OnSubStart2103304")
end

function Quest21033:OnSubFinish2103304(arg1)
    print("OnSubFinish2103304")
end

function Quest21033:OnSubStart2103306(arg1)
    print("OnSubStart2103306")
end

function Quest21033:OnSubFinish2103306(arg1)
    print("OnSubFinish2103306")
    this:ShowBlackScreenWithDialogText(0.3, 0.5, 0.5, function(arg1)
        this:NpcDestroy(npcs.Npc2016Data.alias, 3)
    end, nil, nil, 0, false, true)
end

function Quest21033:OnSubStart2103305(arg1)
    print("OnSubStart2103305")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
    this:CreateQuestNpcBesidePlayer(2103305, 1005, 0.5)
end

function Quest21033:OnSubFinish2103305(arg1)
    print("OnSubFinish2103305")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

return Quest21033
