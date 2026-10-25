require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71005 = class("Quest71005", QuestActorProxy)
Quest71005.defaultAlias = "Quest71005"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71005:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7100501"] = self.OnSubStart7100501,
        ["7100502"] = self.OnSubStart7100502,
        ["7100503"] = self.OnSubStart7100503,
        ["7100504"] = self.OnSubStart7100504,
        ["7100505"] = self.OnSubStart7100505,
        ["7100506"] = self.OnSubStart7100506,
        ["7100507"] = self.OnSubStart7100507,
        ["7100508"] = self.OnSubStart7100508,
        ["7100509"] = self.OnSubStart7100509,
        ["7100510"] = self.OnSubStart7100510,
        ["7100537"] = self.OnSubStart7100537,
        ["7100521"] = self.OnSubStart7100521,
        ["7100511"] = self.OnSubStart7100511,
        ["7100522"] = self.OnSubStart7100522,
        ["7100523"] = self.OnSubStart7100523,
        ["7100535"] = self.OnSubStart7100535,
        ["7100536"] = self.OnSubStart7100536,
        ["7100531"] = self.OnSubStart7100531,
        ["7100532"] = self.OnSubStart7100532,
        ["7100533"] = self.OnSubStart7100533,
        ["7100534"] = self.OnSubStart7100534
    }
end

function Quest71005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7100501"] = self.OnSubFinish7100501,
        ["7100502"] = self.OnSubFinish7100502,
        ["7100503"] = self.OnSubFinish7100503,
        ["7100504"] = self.OnSubFinish7100504,
        ["7100505"] = self.OnSubFinish7100505,
        ["7100506"] = self.OnSubFinish7100506,
        ["7100507"] = self.OnSubFinish7100507,
        ["7100508"] = self.OnSubFinish7100508,
        ["7100509"] = self.OnSubFinish7100509,
        ["7100510"] = self.OnSubFinish7100510,
        ["7100537"] = self.OnSubFinish7100537,
        ["7100521"] = self.OnSubFinish7100521,
        ["7100511"] = self.OnSubFinish7100511,
        ["7100522"] = self.OnSubFinish7100522,
        ["7100523"] = self.OnSubFinish7100523,
        ["7100535"] = self.OnSubFinish7100535,
        ["7100536"] = self.OnSubFinish7100536,
        ["7100531"] = self.OnSubFinish7100531,
        ["7100532"] = self.OnSubFinish7100532,
        ["7100533"] = self.OnSubFinish7100533,
        ["7100534"] = self.OnSubFinish7100534
    }
end

function Quest71005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7100501"] = self.OnSubFailed7100501,
        ["7100502"] = self.OnSubFailed7100502,
        ["7100503"] = self.OnSubFailed7100503,
        ["7100504"] = self.OnSubFailed7100504,
        ["7100505"] = self.OnSubFailed7100505,
        ["7100506"] = self.OnSubFailed7100506,
        ["7100507"] = self.OnSubFailed7100507,
        ["7100508"] = self.OnSubFailed7100508,
        ["7100509"] = self.OnSubFailed7100509,
        ["7100510"] = self.OnSubFailed7100510,
        ["7100537"] = self.OnSubFailed7100537,
        ["7100521"] = self.OnSubFailed7100521,
        ["7100511"] = self.OnSubFailed7100511,
        ["7100522"] = self.OnSubFailed7100522,
        ["7100523"] = self.OnSubFailed7100523,
        ["7100535"] = self.OnSubFailed7100535,
        ["7100536"] = self.OnSubFailed7100536,
        ["7100531"] = self.OnSubFailed7100531,
        ["7100532"] = self.OnSubFailed7100532,
        ["7100533"] = self.OnSubFailed7100533,
        ["7100534"] = self.OnSubFailed7100534
    }
end

function Quest71005:Start()
    print("Start")
end

function Quest71005:OnDestroy()
    print("OnDestroy")
end

function Quest71005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71005:NarratorTaskOnly()
    print("NarratorTaskOnly")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "Story")
end

function Quest71005:CameralookatGate()
    print("CameralookatGate")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "WQ71005_EnterDungeon").pos, 0, 1, false)
end

function Quest71005:PaimonCreate()
    print("PaimonCreate")
    globalActor:EnablePlayerInput(false)
    local paimonData = npcs.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local n = 1.5
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(7100531, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
    globalActor:EnablePlayerInput(true)
end

function Quest71005:OnSubStart7100501(arg1)
    print("OnSubStart7100501")
end

function Quest71005:OnSubFinish7100501(arg1)
    print("OnSubFinish7100501")
end

function Quest71005:OnSubFailed7100501(arg1)
    print("OnSubFailed7100501")
end

function Quest71005:OnSubStart7100502(arg1)
    print("OnSubStart7100502")
end

function Quest71005:OnSubFinish7100502(arg1)
    print("OnSubFinish7100502")
end

function Quest71005:OnSubFailed7100502(arg1)
    print("OnSubFailed7100502")
end

function Quest71005:OnSubStart7100503(arg1)
    print("OnSubStart7100503")
end

function Quest71005:OnSubFinish7100503(arg1)
    print("OnSubFinish7100503")
end

function Quest71005:OnSubFailed7100503(arg1)
    print("OnSubFailed7100503")
end

function Quest71005:OnSubStart7100504(arg1)
    print("OnSubStart7100504")
end

function Quest71005:OnSubFinish7100504(arg1)
    print("OnSubFinish7100504")
end

function Quest71005:OnSubFailed7100504(arg1)
    print("OnSubFailed7100504")
end

function Quest71005:OnSubStart7100505(arg1)
    print("OnSubStart7100505")
end

function Quest71005:OnSubFinish7100505(arg1)
    print("OnSubFinish7100505")
end

function Quest71005:OnSubFailed7100505(arg1)
    print("OnSubFailed7100505")
end

function Quest71005:OnSubStart7100506(arg1)
    print("OnSubStart7100506")
end

function Quest71005:OnSubFinish7100506(arg1)
    print("OnSubFinish7100506")
end

function Quest71005:OnSubFailed7100506(arg1)
    print("OnSubFailed7100506")
end

function Quest71005:OnSubStart7100507(arg1)
    print("OnSubStart7100507")
end

function Quest71005:OnSubFinish7100507(arg1)
    print("OnSubFinish7100507")
end

function Quest71005:OnSubFailed7100507(arg1)
    print("OnSubFailed7100507")
end

function Quest71005:OnSubStart7100508(arg1)
    print("OnSubStart7100508")
end

function Quest71005:OnSubFinish7100508(arg1)
    print("OnSubFinish7100508")
end

function Quest71005:OnSubFailed7100508(arg1)
    print("OnSubFailed7100508")
end

function Quest71005:OnSubStart7100509(arg1)
    print("OnSubStart7100509")
end

function Quest71005:OnSubFinish7100509(arg1)
    print("OnSubFinish7100509")
end

function Quest71005:OnSubFailed7100509(arg1)
    print("OnSubFailed7100509")
end

function Quest71005:OnSubStart7100510(arg1)
    print("OnSubStart7100510")
end

function Quest71005:OnSubFinish7100510(arg1)
    print("OnSubFinish7100510")
end

function Quest71005:OnSubFailed7100510(arg1)
    print("OnSubFailed7100510")
end

function Quest71005:OnSubStart7100537(arg1)
    print("OnSubStart7100537")
end

function Quest71005:OnSubFinish7100537(arg1)
    print("OnSubFinish7100537")
    self:CallDelay(9, self.NarratorTaskOnly)
end

function Quest71005:OnSubFailed7100537(arg1)
    print("OnSubFailed7100537")
end

function Quest71005:OnSubStart7100521(arg1)
    print("OnSubStart7100521")
end

function Quest71005:OnSubFinish7100521(arg1)
    print("OnSubFinish7100521")
end

function Quest71005:OnSubFailed7100521(arg1)
    print("OnSubFailed7100521")
end

function Quest71005:OnSubStart7100511(arg1)
    print("OnSubStart7100511")
end

function Quest71005:OnSubFinish7100511(arg1)
    print("OnSubFinish7100511")
end

function Quest71005:OnSubFailed7100511(arg1)
    print("OnSubFailed7100511")
end

function Quest71005:OnSubStart7100522(arg1)
    print("OnSubStart7100522")
end

function Quest71005:OnSubFinish7100522(arg1)
    print("OnSubFinish7100522")
end

function Quest71005:OnSubFailed7100522(arg1)
    print("OnSubFailed7100522")
end

function Quest71005:OnSubStart7100523(arg1)
    print("OnSubStart7100523")
end

function Quest71005:OnSubFinish7100523(arg1)
    print("OnSubFinish7100523")
end

function Quest71005:OnSubFailed7100523(arg1)
    print("OnSubFailed7100523")
end

function Quest71005:OnSubStart7100535(arg1)
    print("OnSubStart7100535")
end

function Quest71005:OnSubFinish7100535(arg1)
    print("OnSubFinish7100535")
end

function Quest71005:OnSubFailed7100535(arg1)
    print("OnSubFailed7100535")
end

function Quest71005:OnSubStart7100536(arg1)
    print("OnSubStart7100536")
end

function Quest71005:OnSubFinish7100536(arg1)
    print("OnSubFinish7100536")
end

function Quest71005:OnSubFailed7100536(arg1)
    print("OnSubFailed7100536")
end

function Quest71005:OnSubStart7100531(arg1)
    print("OnSubStart7100531")
    self:CallDelay(1, self.PaimonCreate)
end

function Quest71005:OnSubFinish7100531(arg1)
    print("OnSubFinish7100531")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71005:OnSubFailed7100531(arg1)
    print("OnSubFailed7100531")
end

function Quest71005:OnSubStart7100532(arg1)
    print("OnSubStart7100532")
end

function Quest71005:OnSubFinish7100532(arg1)
    print("OnSubFinish7100532")
end

function Quest71005:OnSubFailed7100532(arg1)
    print("OnSubFailed7100532")
end

function Quest71005:OnSubStart7100533(arg1)
    print("OnSubStart7100533")
end

function Quest71005:OnSubFinish7100533(arg1)
    print("OnSubFinish7100533")
end

function Quest71005:OnSubFailed7100533(arg1)
    print("OnSubFailed7100533")
end

function Quest71005:OnSubStart7100534(arg1)
    print("OnSubStart7100534")
end

function Quest71005:OnSubFinish7100534(arg1)
    print("OnSubFinish7100534")
end

function Quest71005:OnSubFailed7100534(arg1)
    print("OnSubFailed7100534")
end

return Quest71005
